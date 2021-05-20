import 'package:flutter_app/async/state/async_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../prefs.dart';
import 'model/async_item.dart';

class AsyncStateNotifier extends StateNotifier<AsyncState> {
  AsyncStateNotifier() : super(AsyncState()) {
    readUserData();
  }

  writeUserData(String name, int age, String birthday) async {
    state = state.copyWith(
      isLoading: true,
    );
    await Prefs.setName(name);
    await Prefs.setAge(age);
    await Prefs.setBirthDay(birthday);
    readUserData();
  }

  readUserData() async {
    state = state.copyWith(
      isLoading: true,
    );

    final asyncItems = AsyncItem(
      name: await Prefs.getName(),
      age: await Prefs.getAge(),
      birthday: await Prefs.getBirthDay(),
    );

    state = state.copyWith(
      isLoading: false,
      isReadyData: asyncItems.name != null,
      asyncItem: asyncItems,
    );
  }
}