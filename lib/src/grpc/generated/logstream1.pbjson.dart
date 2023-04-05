///
//  Generated code. Do not modify.
//  source: logstream1.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use streamLogEventsRequestDescriptor instead')
const StreamLogEventsRequest$json = const {
  '1': 'StreamLogEventsRequest',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 9, '10': 'user'},
  ],
};

/// Descriptor for `StreamLogEventsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamLogEventsRequestDescriptor = $convert.base64Decode('ChZTdHJlYW1Mb2dFdmVudHNSZXF1ZXN0EhIKBHVzZXIYASABKAlSBHVzZXI=');
@$core.Deprecated('Use logEventsDescriptor instead')
const LogEvents$json = const {
  '1': 'LogEvents',
  '2': const [
    const {'1': 'events', '3': 1, '4': 3, '5': 11, '6': '.logevents.LogEvent', '10': 'events'},
  ],
};

/// Descriptor for `LogEvents`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logEventsDescriptor = $convert.base64Decode('CglMb2dFdmVudHMSKwoGZXZlbnRzGAEgAygLMhMubG9nZXZlbnRzLkxvZ0V2ZW50UgZldmVudHM=');
@$core.Deprecated('Use logEventDescriptor instead')
const LogEvent$json = const {
  '1': 'LogEvent',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
    const {'1': 'timestamp', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
  ],
};

/// Descriptor for `LogEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logEventDescriptor = $convert.base64Decode('CghMb2dFdmVudBIOCgJpZBgBIAEoBVICaWQSEAoDbXNnGAIgASgJUgNtc2cSOAoJdGltZXN0YW1wGAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdGltZXN0YW1w');
