import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'question_answer_state.dart';

class QuestionAnswerCubit extends Cubit<QuestionAnswerState> {
  QuestionAnswerCubit() : super(QuestionAnswerInitial());
}
