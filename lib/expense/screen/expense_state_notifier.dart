import 'package:flutter_app/expense/db/db.dart';
import 'package:flutter_app/expense/repository/expense_repository.dart';
import 'package:flutter_app/expense/state/expense_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MoneyStateNotifier extends StateNotifier<MoneyStateNotifier> {
  MoneyStateNotifier() : super(MoneyInfoState()) {
    readData();
  }

  MoneyInfoRepository _repository = MoneyInfoRepository();

  writeData(MoneyInfoData data) async {
    state = state.copyWith(isLoading: true);
    await _repository.writeMoneyData(data);
    readData();
  }

  deleteData(MoneyInfoData data) async {
    state = state.copyWith(isLoading: true);
    await _repository.deleteMoneyData(data.id);
    readData();
  }

  readData() async {
    state = state.copyWith(isLoading: true);

    final moneyItems = await _repository.readAllMoneyItems();

    state = state.copyWith(
      isLoading: false,
      isReadyData: true,
      moneyInfo: moneyItems,
    );
  }
}