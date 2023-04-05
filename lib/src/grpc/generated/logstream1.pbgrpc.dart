///
//  Generated code. Do not modify.
//  source: logstream1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'logstream1.pb.dart' as $0;
export 'logstream1.pb.dart';

class LogEventServiceClient extends $grpc.Client {
  static final _$streamLogEvents =
      $grpc.ClientMethod<$0.StreamLogEventsRequest, $0.LogEvent>(
          '/logevents.LogEventService/StreamLogEvents',
          ($0.StreamLogEventsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.LogEvent.fromBuffer(value));

  LogEventServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.LogEvent> streamLogEvents(
      $0.StreamLogEventsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$streamLogEvents, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class LogEventServiceBase extends $grpc.Service {
  $core.String get $name => 'logevents.LogEventService';

  LogEventServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.StreamLogEventsRequest, $0.LogEvent>(
        'StreamLogEvents',
        streamLogEvents_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.StreamLogEventsRequest.fromBuffer(value),
        ($0.LogEvent value) => value.writeToBuffer()));
  }

  $async.Stream<$0.LogEvent> streamLogEvents_Pre($grpc.ServiceCall call,
      $async.Future<$0.StreamLogEventsRequest> request) async* {
    yield* streamLogEvents(call, await request);
  }

  $async.Stream<$0.LogEvent> streamLogEvents(
      $grpc.ServiceCall call, $0.StreamLogEventsRequest request);
}
