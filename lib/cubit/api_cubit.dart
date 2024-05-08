// import 'package:dio/dio.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:learning_api/cubit/api_states.dart';

// class CharactersCubit extends Cubit<CharacterStates> {
//   CharactersCubit() : super(InitialState());

//   late List<CharacterModel> characters;

//   // https://rickandmortyapi.com/api/character  // api link

//   //  https://rickandmortyapi.com/api/   ==> BaseURL
// //   // respone has == 1- status code   2- Body(data)

//   void getAllCharacters() async {
//     emit(GetLoadingState()); // Loading State Data From API

//     try {
//       Response response =
//           await Dio(BaseOptions(baseUrl: 'https://rickandmortyapi.com/api/'))
//               .get('character');

//       print(response.statusCode);

//       //print(response.data['results'][0]['name']);

//       // response.data['results']  ===> List<Map<String, dynamic>>

//       List<dynamic> results = response.data['results'];
//       // Convert (results) List<Map<String, dynamic>>  ==> List<CharacterModel>

//       characters = results
//           .map<CharacterModel>((element) => CharacterModel.fromJson(element))
//           .toList();

//       print(characters[4].name);
//       print(characters[4].characterId);
//       print(characters[4].gender);
//       print(characters[0].name);

//       emit(GetSuccessState());
//     } catch (error) {
//       print(error.toString());
//       emit(GetErrorState());

//     }
//   }
// }

// class CharacterModel {
//   late int characterId;
//   late String name;
//   late String status;
//   late String gender;

//   CharacterModel.fromJson(Map<String, dynamic> json) {
//     characterId = json['id'];
//     name = json['name'];
//     status = json['status'];
//     gender = json['gender'];
//   }
// }
