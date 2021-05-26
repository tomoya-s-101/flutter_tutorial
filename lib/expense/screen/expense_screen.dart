import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/expense/db/db.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../Constants.dart';
import 'expense_state_notifier.dart';

final moneyStateNotifierProvider =
StateNotifierProvider((ref) => MoneyStateNotifier());

class ExpenseScreen extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(MoneyStateNotifierProvider.state);
    MoneyInfoData itemData;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Strings.disbursementManagementText,
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              child: Center(
                child: state.isReadyData
                    ? _createBody(state.todoItems)
                    : Container(),
              ),
            ),
            state.isLoading
                ? Container(
              color: AppColors.greyShade700,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
                : Container(),
          ],
        ),
      ),
      floatingActionButton: _createFloatingActionButton(context, itemData),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _createBody(List<MoneyInfoData> itemData) {
    return ListView.builder(
      itemCount: itemData.length,
      itemBuilder: (context, index) {
        final data = itemData[index];
        return _buildMoneyItem(context, data);
      },
    );
  }

  Widget _buildMoneyItem(BuildContext context, MoneyInfoData data) {
    return Slidable(
      actions: [
        IconSlideAction(
          caption: 'delete',
          icon: Icons.delete,
          color: AppColors.red,
          onTap: () {
            context.read(moneyStateNotifierProvider).deleteData(data);
          },
        )
      ],
      actionPane: SlidableDrawerActionPane(),
      child: Container(
        margin: EdgeInsets.only(top: 5),
        child: ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '投資額：${data.investmentMoney}',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 5),
              Text(
                '回収額；${data.collectionMoney}',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          subtitle: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('作成日：${data.createdAt.toString()}'),
                ],
              ),
              Divider(
                color: AppColors.greyShade300,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _createFloatingActionButton(
      BuildContext context, MoneyInfoData itemData) {
    return FloatingActionButton(
      child: Icon(
        Icons.edit,
      ),
      onPressed: () {
        _showInputDialog(context, itemData);
      },
    );
  }

  _showInputDialog(BuildContext context, MoneyInfoData itemData) {
    final today = DateTime.now();
    TextEditingController _investmentController = TextEditingController();
    TextEditingController _collectionController = TextEditingController();

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
                  controller: _investmentController,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value.isEmpty) {
                      return Strings.isEmptyText;
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _collectionController,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value.isEmpty) {
                      return Strings.isEmptyText;
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                Strings.cancelText,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final formatter = DateFormat('yyyy-MM-dd');
                var money = MoneyInfoData(
                  id: null,
                  investmentMoney: _investmentController,
                  collectionMoney: _collectionController,
                  createdAt: formatter.format(today),
                );
                if (_formKey.currentState.validate()) {
                  await context.read(moneyStateNotifierProvider).writeData(money);
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

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: AppColors.greyShade900,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: AppColors.white,
      selectedItemColor: AppColors.red,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.money,
          ),
          label: Strings.disbursementManagementText,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_balance_wallet,
          ),
          label: Strings.balanceTableText,
        ),
      ],
    );
  }
}
