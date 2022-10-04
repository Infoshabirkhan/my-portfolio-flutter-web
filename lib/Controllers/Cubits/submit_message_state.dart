part of 'submit_message_cubit.dart';

@immutable
abstract class SubmitMessageState {}

class SubmitMessageInitial extends SubmitMessageState {}
class SubmitMessageLoading extends SubmitMessageState {}
class SubmitMessageLoaded extends SubmitMessageState {}
class SubmitMessageError extends SubmitMessageState {}
