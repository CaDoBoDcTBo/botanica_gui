//
//  Generated code. Do not modify.
//  source: plant.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGA'
    'IgASgJUghwYXNzd29yZA==');

@$core.Deprecated('Use loginReplyDescriptor instead')
const LoginReply$json = {
  '1': 'LoginReply',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `LoginReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginReplyDescriptor = $convert.base64Decode(
    'CgpMb2dpblJlcGx5EhQKBXRva2VuGAEgASgJUgV0b2tlbg==');

@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest$json = {
  '1': 'RegisterRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode(
    'Cg9SZWdpc3RlclJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3'
    'JkGAIgASgJUghwYXNzd29yZA==');

@$core.Deprecated('Use registerReplyDescriptor instead')
const RegisterReply$json = {
  '1': 'RegisterReply',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `RegisterReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerReplyDescriptor = $convert.base64Decode(
    'Cg1SZWdpc3RlclJlcGx5EhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3M=');

@$core.Deprecated('Use plantReplyDescriptor instead')
const PlantReply$json = {
  '1': 'PlantReply',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'age', '3': 3, '4': 1, '5': 5, '10': 'age'},
    {'1': 'photo', '3': 4, '4': 1, '5': 12, '10': 'photo'},
  ],
};

/// Descriptor for `PlantReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List plantReplyDescriptor = $convert.base64Decode(
    'CgpQbGFudFJlcGx5Eg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhAKA2FnZR'
    'gDIAEoBVIDYWdlEhQKBXBob3RvGAQgASgMUgVwaG90bw==');

@$core.Deprecated('Use createPlantRequestDescriptor instead')
const CreatePlantRequest$json = {
  '1': 'CreatePlantRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'age', '3': 2, '4': 1, '5': 5, '10': 'age'},
    {'1': 'photo', '3': 3, '4': 1, '5': 12, '10': 'photo'},
  ],
};

/// Descriptor for `CreatePlantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPlantRequestDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVQbGFudFJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIQCgNhZ2UYAiABKAVSA2'
    'FnZRIUCgVwaG90bxgDIAEoDFIFcGhvdG8=');

@$core.Deprecated('Use getPlantRequestDescriptor instead')
const GetPlantRequest$json = {
  '1': 'GetPlantRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetPlantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPlantRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRQbGFudFJlcXVlc3QSDgoCaWQYASABKAVSAmlk');

@$core.Deprecated('Use updatePlantRequestDescriptor instead')
const UpdatePlantRequest$json = {
  '1': 'UpdatePlantRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'age', '3': 3, '4': 1, '5': 5, '10': 'age'},
  ],
};

/// Descriptor for `UpdatePlantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePlantRequestDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVQbGFudFJlcXVlc3QSDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbW'
    'USEAoDYWdlGAMgASgFUgNhZ2U=');

@$core.Deprecated('Use deletePlantRequestDescriptor instead')
const DeletePlantRequest$json = {
  '1': 'DeletePlantRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeletePlantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePlantRequestDescriptor = $convert.base64Decode(
    'ChJEZWxldGVQbGFudFJlcXVlc3QSDgoCaWQYASABKAVSAmlk');

@$core.Deprecated('Use listReplyDescriptor instead')
const ListReply$json = {
  '1': 'ListReply',
  '2': [
    {'1': 'Plants', '3': 1, '4': 3, '5': 11, '6': '.botanica.PlantReply', '10': 'Plants'},
  ],
};

/// Descriptor for `ListReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listReplyDescriptor = $convert.base64Decode(
    'CglMaXN0UmVwbHkSLAoGUGxhbnRzGAEgAygLMhQuYm90YW5pY2EuUGxhbnRSZXBseVIGUGxhbn'
    'Rz');

