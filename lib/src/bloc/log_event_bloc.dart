import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import './../grpc/generated/logstream1.pb.dart';
import './../grpc/generated/logstream1.pbgrpc.dart';

part 'log_event_event.dart';
part 'log_event_state.dart';

class LogEventBloc extends Bloc<LogEventEvent, LogEventState> {
  LogEventBloc(this.client) : super(LogEventInitial());

  final LogEventServiceClient client;

  @override
  Stream<LogEventState> mapEventToState(LogEventEvent event) async* {
    if (event is StartListening) {
      yield* _mapStartListeningToState();
    }
  }

  Stream<LogEventState> _mapStartListeningToState() async* {
    yield LogEventLoading();

    try {
      await for (final logEvent
          in client.streamLogEvents(StreamLogEventsRequest())) {
        yield LogEventLoaded(logEvent);
      }
    } catch (error) {
      yield LogEventError(error.toString());
    }
  }
}
