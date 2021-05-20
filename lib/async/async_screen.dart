import 'package:flutter/material.dart';
import 'package:flutter_app/Constants.dart';
import 'package:flutter_app/async/async_state_notifier.dart';
import 'package:flutter_app/async/state/async_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final asyncStateNotifierProvider =
    StateNotifierProvider((ref) => AsyncStateNotifier());

class AsyncScreen extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(asyncStateNotifierProvider.state);
    return Scaffold(
      body: _createBody(state),
      floatingActionButton: _createFloatingActionButton(context, state),
    );
  }

  Widget _createBody(AsyncState state) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(state.isReadyData ? '名前：${state.asyncItem.name}' : '名前：未設定'),
          Text(state.isReadyData ? '年齢：${state.asyncItem.age}' : '年齢：未設定'),
          Text(state.isReadyData
              ? '誕生日：${state.asyncItem.birthday}'
              : '誕生日：未設定'),
        ],
      ),
    );
  }

  Widget _createFloatingActionButton(BuildContext context, AsyncState state) {
    return FloatingActionButton(
      child: Icon(Icons.edit),
      onPressed: () {
        _showInputFormDialog(context, state);
      },
    );
  }

  _showInputFormDialog(BuildContext context, AsyncState state) {
    String name;
    int age;
    String birthday;
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
                  initialValue: state.asyncItem.name,
                  decoration: InputDecoration(
                    labelText: Strings.nameText,
                    hintText: '山田　太郎',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return Strings.isEmptyText;
                    }
                    return null;
                  },
                  onSaved: (value) {
                    name = value;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  initialValue: state.asyncItem.age != null
                      ? state.asyncItem.age.toString()
                      : '',
                  decoration: InputDecoration(
                    labelText: Strings.ageText,
                    hintText: '数字で入力',
                  ),
                  validator: (value) {
                    if (value.isEmpty || num.tryParse(value) == null) {
                      return Strings.ageValidatorText;
                    }
                    return null;
                  },
                  onSaved: (value) {
                    age = int.parse(value);
                  },
                ),
                TextFormField(
                  initialValue: state.asyncItem.birthday,
                  decoration: InputDecoration(
                    labelText: Strings.birthdayText,
                    hintText: '2000/1/1',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return Strings.isEmptyText;
                    }
                    return null;
                  },
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
              onPressed: () async {
                if (_formKey.currentState.validate()) {
                  this._formKey.currentState.save();
                  await context
                      .read(asyncStateNotifierProvider)
                      .writeUserData(name, age, birthday);
                  Navigator.of(context).pop();
                }
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
}
