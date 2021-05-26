// import 'package:flutter_app/practice2/repository/netkeiba_repository.dart';
// import 'package:flutter_app/practice2/state/netkeiba_state.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
//
// class NetkeibaStateNotifier extends StateNotifier<NetkeibaState> {
//   NetkeibaStateNotifier() : super(NetkeibaState()) {
//     fetchNetkeibaItems();
//   }
//
//   NetkeibaRepository _repository = NetkeibaRepository();
//
//   fetchNetkeibaItems() async {
//     state = state.copyWith(
//       isLoading: true,
//     );
//
//     final netkeibaItems = await _repository.fetchNetkeibaItems();
//
//     if (netkeibaItems.isNotEmpty) {
//       state = state.copyWith(
//         isLoading: false,
//         isReadyData: true,
//         netkeibaItem: netkeibaItems,
//       );
//     } else {
//       state = state.copyWith(
//         isLoading: false,
//         isReadyData: false,
//         netkeibaItem: netkeibaItems,
//       );
//     }
//   }
// }