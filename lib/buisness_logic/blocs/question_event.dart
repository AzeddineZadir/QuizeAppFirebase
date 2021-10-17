part of 'question_bloc.dart';

@immutable
abstract class QuestionEvent {}

class FetchQuestionsEvent extends QuestionEvent {}

class AddQuestionsEvent extends QuestionEvent {
  final _question;
  AddQuestionsEvent(this._question) {}
}
