// user_cubit.dart
import 'package:bloc/bloc.dart';
import 'dart:convert';

// Events
abstract class UserEvent {}

class FetchUserEvent extends UserEvent {}

// States
abstract class UserState {}

class InitialState extends UserState {}

class LoadingState extends UserState {}

class LoadedState extends UserState {
  final List<dynamic> characters;

  LoadedState(this.characters);
}

class ErrorState extends UserState {
  final String message;

  ErrorState(this.message);
}
