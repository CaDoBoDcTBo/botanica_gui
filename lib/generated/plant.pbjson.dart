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

@$core.Deprecated('Use createPlantRequestDescriptor instead')
const CreatePlantRequest$json = {
  '1': 'CreatePlantRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'age', '3': 2, '4': 1, '5': 5, '10': 'age'},
  ],
};

/// Descriptor for `CreatePlantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPlantRequestDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVQbGFudFJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIQCgNhZ2UYAiABKAVSA2'
    'FnZQ==');

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

@$core.Deprecated('Use plantReplyDescriptor instead')
const PlantReply$json = {
  '1': 'PlantReply',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'age', '3': 3, '4': 1, '5': 5, '10': 'age'},
  ],
};

/// Descriptor for `PlantReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List plantReplyDescriptor = $convert.base64Decode(
    'CgpQbGFudFJlcGx5Eg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhAKA2FnZR'
    'gDIAEoBVIDYWdl');

