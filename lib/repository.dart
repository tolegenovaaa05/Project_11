import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';

part 'repository.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')
abstract class RePost {
  factory RePost(Dio dio, {String baseUrl}) = _RePost;

  @GET('/todos')
  Future<List<Todo>> getTodos();
}

@JsonSerializable()
class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
  Map<String, dynamic> toJson() => _$TodoToJson(this);
}
