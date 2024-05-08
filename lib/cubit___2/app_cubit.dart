import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_api/Model/model.dart';
import 'package:learning_api/cubit/cubit.dart';
import 'package:learning_api/cubit___2/app_states.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(InitialState());
  final Dio _dio = Dio(); // إنشاء مثيل من Dio

  Future<void> fetchCharacters() async {
    emit(LoadingState()); // loading state
    try {
      final response =
          await _dio.get('https://rickandmortyapi.com/api/character');

      // 200 is the status code for success
      if (response.statusCode == 200) {
        final Map<String, dynamic> data =
            response.data; // all data in api (Map)
        final List<dynamic> charactersData = data['results']; // List of Map

        // Convert List of Map ==> List Of Model
        List<CharacterModel> characters = charactersData
            .map((element) => CharacterModel.fromJson(element))
            .toList();

        emit(LoadedState(characters)); // Success State
      } else {
        emit(ErrorState('Failed to fetch characters'));
      }
    } catch (e) {
      emit(ErrorState('Error: $e'));
    }
  }
}
