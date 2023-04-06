import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import './../grpc/generated/logstream1.pb.dart';
import './../grpc/generated/logstream1.pbgrpc.dart';

part 'log_event_event.dart';
part 'log_event_state.dart';

class LogEventBloc extends Bloc<LogEventEvent, LogEventState> {
  LogEventBloc(this.client) : super(LogEventInitial()) {
    on<StartListening>(_onStartListening);
  }

  final LogEventServiceClient client;
  final List<LogEvent> logEvents = [];

  void _onStartListening(
      StartListening event, Emitter<LogEventState> emit) async {
    emit(LogEventLoading());

    try {
      await for (final logEvent
          in client.streamLogEvents(StreamLogEventsRequest())) {
        logEvents.add(logEvent);
        emit(LogEventLoaded(
            List.from(logEvents))); // Make a copy of the logEvents list
      }
    } catch (error) {
      emit(LogEventError(error.toString()));
    }
  }
}
