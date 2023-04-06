part of 'log_event_bloc.dart';

abstract class LogEventEvent extends Equatable {
  // final _msg = StreamController<String>();

  // // Add data to stream
  // Stream<String> get msg => _msg.stream;

  // // Change data
  // Function(String) get changeMsg => _msg.sink.add;

  LogEventEvent();

  @override
  List<Object?> get props => [];
}

/*
    final _email = StreamController<String>();
  final _password = StreamController<String>();

  // Add data to stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  // Change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  dispose() {
    _email.close();
    _password.close();
  }

*/

class StartListening extends LogEventEvent {}
