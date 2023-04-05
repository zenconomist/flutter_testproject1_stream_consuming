part of 'log_event_bloc.dart';

abstract class LogEventEvent extends Equatable {
  const LogEventEvent();

  @override
  List<Object> get props => [];
}

class StartListening extends LogEventEvent {}
