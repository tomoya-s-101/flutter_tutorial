import 'package:flutter/material.dart';
import 'package:flutter_app/Constants.dart';
import 'package:flutter_app/async/state/async_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

import '../prefs.dart';
import 'async_state_notifier.dart';

final asyncStateNotifierProvider =
    StateNotifierProvider((ref) => AsyncStateNotifier());

class AsyncScreen extends ConsumerWidget {
  @override
  _AsyncScreenState createState() => _AsyncScreenState();
}

class _AsyncScreenState extends State<AsyncScreen> {
  String name;
  int age;
  String birthday;

  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final birthdayController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  String emptyValidator(String value) {
    if (value.isEmpty) {
      return Strings.isEmptyText;
    }
    return null;
  }

  String ageValidator(String value) {
    if (value.isEmpty || num.tryParse(value) == null) {
      return Strings.ageValidatorText;
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  _loadUserData() async {
    name = await Prefs.getName();
    age = await Prefs.getAge();
    birthday = await Prefs.getBirthDay();
    setState(() {});
  }

  _saveUserData(String name, int age, String birthday) async {
    await Prefs.setName(name);
    await Prefs.setAge(age);
    await Prefs.setBirthDay(birthday);
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(asyncStateNotifierProvider.state);

    return Scaffold(
      body: _createBody(context, state),
      floatingActionButton: _floatingActionButton(),
    );
  }

  Widget _createBody(BuildContext context, AsyncState state) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name != null ? '名前：$name' : '名前：未設定'),
          Text(age != null ? '年齢：$age' : '年齢：未設定'),
          Text(birthday != null ? '誕生日：$birthday' : '誕生日：未設定'),
        ],
      ),
    );
  }

  FloatingActionButton _floatingActionButton() {
    return FloatingActionButton(
      child: Icon(Icons.edit),
      onPressed: () {
        _showDialog(context);
      },
    );
  }

  _showDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          content: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  initialValue: name,
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: Strings.nameText,
                    hintText: '山田　太郎',
                  ),
                  validator: (value) => emptyValidator(value),
                  onSaved: (value) {
                    name = value;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  initialValue: age != null ? age.toString() : '',
                  decoration: InputDecoration(
                    labelText: Strings.ageText,
                    hintText: '数字で入力',
                  ),
                  validator: (value) => ageValidator(value),
                  onSaved: (value) {
                    age = int.parse(value);
                  },
                ),
                TextFormField(
                  initialValue: birthday,
                  decoration: InputDecoration(
                    labelText: Strings.birthdayText,
                    hintText: '2000/1/1',
                  ),
                  validator: (value) => emptyValidator(value),
                  onSaved: (value) {
                    birthday = value;
                  },
                ),
              ],
            ),
          ),
          actions: [
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                Strings.cancelText,
              ),
            ),
            FlatButton(
              onPressed: () {
                _onTapSave();
              },
              child: Text(
                Strings.saveText,
              ),
            ),
          ],
        );
      },
    );
  }

  _onTapSave() {
    if (_formKey.currentState.validate()) {
      _saveUserData(name, age, birthday);
      setState(() {});
      this._formKey.currentState.save();
      Navigator.of(context).pop();
    }
  }
}
