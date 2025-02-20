//
//  Generated code. Do not modify.
//  source: plant.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/empty.pb.dart' as $0;
import 'plant.pb.dart' as $1;

export 'plant.pb.dart';

@$pb.GrpcServiceName('botanica.PlantService')
class PlantServiceClient extends $grpc.Client {
  static final _$listPlants = $grpc.ClientMethod<$0.Empty, $1.ListReply>(
      '/botanica.PlantService/ListPlants',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ListReply.fromBuffer(value));
  static final _$getPlant = $grpc.ClientMethod<$1.GetPlantRequest, $1.PlantReply>(
      '/botanica.PlantService/GetPlant',
      ($1.GetPlantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PlantReply.fromBuffer(value));
  static final _$createPlant = $grpc.ClientMethod<$1.CreatePlantRequest, $1.PlantReply>(
      '/botanica.PlantService/CreatePlant',
      ($1.CreatePlantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PlantReply.fromBuffer(value));
  static final _$updatePlant = $grpc.ClientMethod<$1.UpdatePlantRequest, $1.PlantReply>(
      '/botanica.PlantService/UpdatePlant',
      ($1.UpdatePlantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PlantReply.fromBuffer(value));
  static final _$deletePlant = $grpc.ClientMethod<$1.DeletePlantRequest, $1.PlantReply>(
      '/botanica.PlantService/DeletePlant',
      ($1.DeletePlantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PlantReply.fromBuffer(value));

  PlantServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.ListReply> listPlants($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPlants, request, options: options);
  }

  $grpc.ResponseFuture<$1.PlantReply> getPlant($1.GetPlantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPlant, request, options: options);
  }

  $grpc.ResponseFuture<$1.PlantReply> createPlant($1.CreatePlantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPlant, request, options: options);
  }

  $grpc.ResponseFuture<$1.PlantReply> updatePlant($1.UpdatePlantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePlant, request, options: options);
  }

  $grpc.ResponseFuture<$1.PlantReply> deletePlant($1.DeletePlantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePlant, request, options: options);
  }
}

@$pb.GrpcServiceName('botanica.PlantService')
abstract class PlantServiceBase extends $grpc.Service {
  $core.String get $name => 'botanica.PlantService';

  PlantServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.ListReply>(
        'ListPlants',
        listPlants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.ListReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetPlantRequest, $1.PlantReply>(
        'GetPlant',
        getPlant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetPlantRequest.fromBuffer(value),
        ($1.PlantReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CreatePlantRequest, $1.PlantReply>(
        'CreatePlant',
        createPlant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CreatePlantRequest.fromBuffer(value),
        ($1.PlantReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdatePlantRequest, $1.PlantReply>(
        'UpdatePlant',
        updatePlant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdatePlantRequest.fromBuffer(value),
        ($1.PlantReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeletePlantRequest, $1.PlantReply>(
        'DeletePlant',
        deletePlant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeletePlantRequest.fromBuffer(value),
        ($1.PlantReply value) => value.writeToBuffer()));
  }

  $async.Future<$1.ListReply> listPlants_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return listPlants(call, await request);
  }

  $async.Future<$1.PlantReply> getPlant_Pre($grpc.ServiceCall call, $async.Future<$1.GetPlantRequest> request) async {
    return getPlant(call, await request);
  }

  $async.Future<$1.PlantReply> createPlant_Pre($grpc.ServiceCall call, $async.Future<$1.CreatePlantRequest> request) async {
    return createPlant(call, await request);
  }

  $async.Future<$1.PlantReply> updatePlant_Pre($grpc.ServiceCall call, $async.Future<$1.UpdatePlantRequest> request) async {
    return updatePlant(call, await request);
  }

  $async.Future<$1.PlantReply> deletePlant_Pre($grpc.ServiceCall call, $async.Future<$1.DeletePlantRequest> request) async {
    return deletePlant(call, await request);
  }

  $async.Future<$1.ListReply> listPlants($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.PlantReply> getPlant($grpc.ServiceCall call, $1.GetPlantRequest request);
  $async.Future<$1.PlantReply> createPlant($grpc.ServiceCall call, $1.CreatePlantRequest request);
  $async.Future<$1.PlantReply> updatePlant($grpc.ServiceCall call, $1.UpdatePlantRequest request);
  $async.Future<$1.PlantReply> deletePlant($grpc.ServiceCall call, $1.DeletePlantRequest request);
}
