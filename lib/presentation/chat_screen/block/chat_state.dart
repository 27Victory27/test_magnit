import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_magnit/data/model/chat_element_model.dart';

part 'chat_state.freezed.dart';
@freezed
class ChatState with _$ChatState{
  const factory ChatState.loading() = _Loading;
  const factory ChatState.succsess(List<Map<String,dynamic>> chatElementModel, int idCurrentUser) = _Succsess;
  const factory ChatState.failure({Object? error}) = _Failure;
}
