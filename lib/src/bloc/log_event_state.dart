part of 'log_event_bloc.dart';

abstract class LogEventState extends Equatable {
  const LogEventState();

  @override
  List<Object> get props => [];
}

class LogEventInitial extends LogEventState {}

class LogEventLoading extends LogEventState {}

class LogEventLoaded extends LogEventState {
  final LogEvent logEvent;

  const LogEventLoaded(this.logEvent);

  @override
  List<Object> get props => [logEvent];
}

class LogEventError extends LogEventState {
  final String message;

  const LogEventError(this.message);

  @override
  List<Object> get props => [message];
}
