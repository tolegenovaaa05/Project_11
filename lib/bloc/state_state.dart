import 'package:flutter_9lb_aruka/repository.dart';

abstract class WorkState {}

class WorkInitialState extends WorkState {}

class WorkLoadingState extends WorkState {}

class WorkLoadedState extends WorkState {
  final List<Todo> todos;

  WorkLoadedState(this.todos);
}

class WorkErrorState extends WorkState {
  final String message;

  WorkErrorState(this.message);
}
