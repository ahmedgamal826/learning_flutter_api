// // import 'dart:io';
// // import 'package:dio/dio.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:learning_api/Model/model.dart';
// // import 'package:learning_api/cubit/api_states.dart';

// // class CharacterCubit extends Cubit<CharacterStates> {
// //   CharacterCubit() : super(InitialState());

// //   Future<List<ReqresModel>?> fetchApi() async {
// //     emit(GetLoadingState()); // Loading State Data From API

// //     // try {
// //     // } catch (error) {
// //     //   print(error);
// //     //   emit(GetErrorState());
// //     // }

// //     final res = await Dio().get("https://rickandmortyapi.com/api/character");

// //     if (res.statusCode == HttpStatus.ok) {
// //       final data = res.data!['results']; //Updated here
// //       if (data is List) {
// //         return data.map((e) => ReqresModel.fromJson(e)).toList();
// //       }
// //     }
// //     emit(GetSuccessState());    // Success State (Fetch Data From API)
// //     return <ReqresModel>[];
// //   }
// // }

// import 'dart:io';
// import 'package:dio/dio.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:learning_api/Model/model.dart';
// import 'package:learning_api/cubit/api_states.dart';

// class CharacterCubit extends Cubit<CharacterStates> {
//   CharacterCubit() : super(InitialState());

//   Future<void> fetchApi() async {
//     emit(GetLoadingState()); // Emit Loading State

//     try {
//       final res = await Dio().get("https://rickandmortyapi.com/api/character");

//       if (res.statusCode == HttpStatus.ok) {
//         final data = res.data!['results']; //Updated here
//         if (data is List) {
//           final postItems = data.map((e) => ReqresModel.fromJson(e)).toList();
//           emit(GetSuccessState(
//               postItems)); // Emit Success State with fetched data
//         } else {
//           emit(GetErrorState(
//               'Invalid data format')); // Emit Error State for invalid data format
//         }
//       } else {
//         emit(GetErrorState(
//             'Failed to fetch data')); // Emit Error State for failed request
//       }
//     } catch (error) {
//       print(error);
//       emit(GetErrorState(
//           'Error fetching data: $error')); // Emit Error State for other errors
//     }
//   }
// }
