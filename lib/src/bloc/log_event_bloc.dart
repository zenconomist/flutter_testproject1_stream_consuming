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

  void _onStartListening(
      StartListening event, Emitter<LogEventState> emit) async {
    emit(LogEventLoading());

    try {
      await for (final logEvent
          in client.streamLogEvents(StreamLogEventsRequest())) {
        emit(LogEventLoaded(logEvent));
      }
    } catch (error) {
      emit(LogEventError(error.toString()));
    }
  }
}
