import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grpc/grpc.dart';
import './src/grpc/generated/logstream1.pbgrpc.dart';
import './src/bloc/log_event_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final client = LogEventServiceClient(ClientChannel(
      'localhost',
      port: 50051,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()),
    ));

    return MaterialApp(
      home: BlocProvider(
        create: (context) => LogEventBloc(client)..add(StartListening()),
        child: LogEventList(),
      ),
    );
  }
}

class LogEventList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Log Events')),
      body: BlocBuilder<LogEventBloc, LogEventState>(
        builder: (context, state) {
          if (state is LogEventInitial || state is LogEventLoading) {
            return Center(child: CircularProgressIndicator());
          }

          if (state is LogEventError) {
            return Center(child: Text('Error: ${state.message}'));
          }
          dynamic logEvents = [(state as LogEventLoaded)];
          return ListView.builder(
            itemCount: logEvents.length,
            itemBuilder: (context, index) {
              final logEvent = logEvents[index];
              return ListTile(
                title: Text(logEvent.msg),
                subtitle: Text(
                    'ID: ${logEvent.id} - Timestamp: ${logEvent.timestamp.toDateTime()}'),
              );
            },
          );
        },
      ),
    );
  }
}
