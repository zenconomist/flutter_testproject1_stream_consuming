part of 'log_event_bloc.dart';

abstract class LogEventState extends Equatable {
  const LogEventState();

  @override
  List<Object?> get props => [];
}

class LogEventInitial extends LogEventState {}

class LogEventLoading extends LogEventState {}

class LogEventLoaded extends LogEventState {
  final List<LogEvent> logEvents;

  const LogEventLoaded(this.logEvents);

  @override
  List<Object?> get props => [logEvents];
}

class LogEventError extends LogEventState {
  final String message;

  const LogEventError(this.message);

  @override
  List<Object?> get props => [message];
}
