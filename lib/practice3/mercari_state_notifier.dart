import 'package:flutter_app/practice3/repository/mercari_repository.dart';
import 'package:flutter_app/practice3/state/mercari_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MercariStateNotifier extends StateNotifier<MercariState> {
  MercariStateNotifier() : super(MercariState()) {
    fetchMercariItems();
  }

  MercariRepository _repository = MercariRepository();

  fetchMercariItems() async {
    state = state.copyWith(
      isLoading: true,
    );

    final mercariItems = await _repository.fetchMercariItems();

    if (mercariItems.isNotEmpty) {
      state = state.copyWith(
        isLoading: false,
        isReadyData: true,
        mercariItem: mercariItems,
      );
    } else {
      state = state.copyWith(
        isLoading: false,
        isReadyData: false,
        mercariItem: mercariItems,
      );
    }
  }
}