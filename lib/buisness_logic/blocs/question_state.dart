part of 'question_bloc.dart';

@immutable
abstract class QuestionState {}

class QuestionInitialState extends QuestionState {}

class QuestionLoadingState extends QuestionState {}

class QuestionLoadedState extends QuestionState {
  List<Question> listQuestion;

  QuestionLoadedState(this.listQuestion);
}

class QuestionAddedCorrectly extends QuestionState {}

class QuestionLoadingError extends QuestionState {}
