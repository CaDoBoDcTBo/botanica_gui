//
//  Generated code. Do not modify.
//  source: plant.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class CreatePlantRequest extends $pb.GeneratedMessage {
  factory CreatePlantRequest({
    $core.String? name,
    $core.int? age,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (age != null) {
      $result.age = age;
    }
    return $result;
  }
  CreatePlantRequest._() : super();
  factory CreatePlantRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePlantRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreatePlantRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'botanica'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'age', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePlantRequest clone() => CreatePlantRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePlantRequest copyWith(void Function(CreatePlantRequest) updates) => super.copyWith((message) => updates(message as CreatePlantRequest)) as CreatePlantRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreatePlantRequest create() => CreatePlantRequest._();
  CreatePlantRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePlantRequest> createRepeated() => $pb.PbList<CreatePlantRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePlantRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePlantRequest>(create);
  static CreatePlantRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get age => $_getIZ(1);
  @$pb.TagNumber(2)
  set age($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAge() => $_has(1);
  @$pb.TagNumber(2)
  void clearAge() => clearField(2);
}

class GetPlantRequest extends $pb.GeneratedMessage {
  factory GetPlantRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetPlantRequest._() : super();
  factory GetPlantRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPlantRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPlantRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'botanica'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPlantRequest clone() => GetPlantRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPlantRequest copyWith(void Function(GetPlantRequest) updates) => super.copyWith((message) => updates(message as GetPlantRequest)) as GetPlantRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPlantRequest create() => GetPlantRequest._();
  GetPlantRequest createEmptyInstance() => create();
  static $pb.PbList<GetPlantRequest> createRepeated() => $pb.PbList<GetPlantRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPlantRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPlantRequest>(create);
  static GetPlantRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UpdatePlantRequest extends $pb.GeneratedMessage {
  factory UpdatePlantRequest({
    $core.int? id,
    $core.String? name,
    $core.int? age,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (age != null) {
      $result.age = age;
    }
    return $result;
  }
  UpdatePlantRequest._() : super();
  factory UpdatePlantRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePlantRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePlantRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'botanica'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'age', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePlantRequest clone() => UpdatePlantRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePlantRequest copyWith(void Function(UpdatePlantRequest) updates) => super.copyWith((message) => updates(message as UpdatePlantRequest)) as UpdatePlantRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePlantRequest create() => UpdatePlantRequest._();
  UpdatePlantRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePlantRequest> createRepeated() => $pb.PbList<UpdatePlantRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePlantRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePlantRequest>(create);
  static UpdatePlantRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get age => $_getIZ(2);
  @$pb.TagNumber(3)
  set age($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAge() => $_has(2);
  @$pb.TagNumber(3)
  void clearAge() => clearField(3);
}

class DeletePlantRequest extends $pb.GeneratedMessage {
  factory DeletePlantRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeletePlantRequest._() : super();
  factory DeletePlantRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePlantRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeletePlantRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'botanica'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletePlantRequest clone() => DeletePlantRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletePlantRequest copyWith(void Function(DeletePlantRequest) updates) => super.copyWith((message) => updates(message as DeletePlantRequest)) as DeletePlantRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeletePlantRequest create() => DeletePlantRequest._();
  DeletePlantRequest createEmptyInstance() => create();
  static $pb.PbList<DeletePlantRequest> createRepeated() => $pb.PbList<DeletePlantRequest>();
  @$core.pragma('dart2js:noInline')
  static DeletePlantRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePlantRequest>(create);
  static DeletePlantRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ListReply extends $pb.GeneratedMessage {
  factory ListReply({
    $core.Iterable<PlantReply>? plants,
  }) {
    final $result = create();
    if (plants != null) {
      $result.plants.addAll(plants);
    }
    return $result;
  }
  ListReply._() : super();
  factory ListReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'botanica'), createEmptyInstance: create)
    ..pc<PlantReply>(1, _omitFieldNames ? '' : 'Plants', $pb.PbFieldType.PM, protoName: 'Plants', subBuilder: PlantReply.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListReply clone() => ListReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListReply copyWith(void Function(ListReply) updates) => super.copyWith((message) => updates(message as ListReply)) as ListReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListReply create() => ListReply._();
  ListReply createEmptyInstance() => create();
  static $pb.PbList<ListReply> createRepeated() => $pb.PbList<ListReply>();
  @$core.pragma('dart2js:noInline')
  static ListReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListReply>(create);
  static ListReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PlantReply> get plants => $_getList(0);
}

class PlantReply extends $pb.GeneratedMessage {
  factory PlantReply({
    $core.int? id,
    $core.String? name,
    $core.int? age,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (age != null) {
      $result.age = age;
    }
    return $result;
  }
  PlantReply._() : super();
  factory PlantReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlantReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlantReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'botanica'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'age', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlantReply clone() => PlantReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlantReply copyWith(void Function(PlantReply) updates) => super.copyWith((message) => updates(message as PlantReply)) as PlantReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlantReply create() => PlantReply._();
  PlantReply createEmptyInstance() => create();
  static $pb.PbList<PlantReply> createRepeated() => $pb.PbList<PlantReply>();
  @$core.pragma('dart2js:noInline')
  static PlantReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlantReply>(create);
  static PlantReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get age => $_getIZ(2);
  @$pb.TagNumber(3)
  set age($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAge() => $_has(2);
  @$pb.TagNumber(3)
  void clearAge() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
