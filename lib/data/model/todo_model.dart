part of 'model.dart';

@freezed
abstract class TodoModel with _$TodoModel {
  const TodoModel._();

  const factory TodoModel({
    required String? id,
    required String? title,
    required String? note,
    required bool? isCompleted,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, dynamic> json) => _$TodoModelFromJson(json);
}
