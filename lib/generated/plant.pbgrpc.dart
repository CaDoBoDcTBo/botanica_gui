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

import 'google/protobuf/empty.pb.dart' as $1;
import 'plant.pb.dart' as $0;

export 'plant.pb.dart';

@$pb.GrpcServiceName('botanica.Authentication')
class AuthenticationClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.LoginReply>(
      '/botanica.Authentication/Login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoginReply.fromBuffer(value));
  static final _$register = $grpc.ClientMethod<$0.RegisterRequest, $0.RegisterReply>(
      '/botanica.Authentication/Register',
      ($0.RegisterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RegisterReply.fromBuffer(value));

  AuthenticationClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.LoginReply> login($0.LoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.RegisterReply> register($0.RegisterRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }
}

@$pb.GrpcServiceName('botanica.Authentication')
abstract class AuthenticationServiceBase extends $grpc.Service {
  $core.String get $name => 'botanica.Authentication';

  AuthenticationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.LoginReply>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.LoginReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RegisterRequest, $0.RegisterReply>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RegisterRequest.fromBuffer(value),
        ($0.RegisterReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.LoginReply> login_Pre($grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.RegisterReply> register_Pre($grpc.ServiceCall call, $async.Future<$0.RegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$0.LoginReply> login($grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.RegisterReply> register($grpc.ServiceCall call, $0.RegisterRequest request);
}
@$pb.GrpcServiceName('botanica.PlantService')
class PlantServiceClient extends $grpc.Client {
  static final _$listPlants = $grpc.ClientMethod<$1.Empty, $0.ListReply>(
      '/botanica.PlantService/ListPlants',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListReply.fromBuffer(value));
  static final _$getPlant = $grpc.ClientMethod<$0.GetPlantRequest, $0.PlantReply>(
      '/botanica.PlantService/GetPlant',
      ($0.GetPlantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PlantReply.fromBuffer(value));
  static final _$createPlant = $grpc.ClientMethod<$0.CreatePlantRequest, $0.PlantReply>(
      '/botanica.PlantService/CreatePlant',
      ($0.CreatePlantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PlantReply.fromBuffer(value));
  static final _$updatePlant = $grpc.ClientMethod<$0.UpdatePlantRequest, $0.PlantReply>(
      '/botanica.PlantService/UpdatePlant',
      ($0.UpdatePlantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PlantReply.fromBuffer(value));
  static final _$deletePlant = $grpc.ClientMethod<$0.DeletePlantRequest, $0.PlantReply>(
      '/botanica.PlantService/DeletePlant',
      ($0.DeletePlantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PlantReply.fromBuffer(value));

  PlantServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListReply> listPlants($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPlants, request, options: options);
  }

  $grpc.ResponseFuture<$0.PlantReply> getPlant($0.GetPlantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPlant, request, options: options);
  }

  $grpc.ResponseFuture<$0.PlantReply> createPlant($0.CreatePlantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPlant, request, options: options);
  }

  $grpc.ResponseFuture<$0.PlantReply> updatePlant($0.UpdatePlantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePlant, request, options: options);
  }

  $grpc.ResponseFuture<$0.PlantReply> deletePlant($0.DeletePlantRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePlant, request, options: options);
  }
}

@$pb.GrpcServiceName('botanica.PlantService')
abstract class PlantServiceBase extends $grpc.Service {
  $core.String get $name => 'botanica.PlantService';

  PlantServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.ListReply>(
        'ListPlants',
        listPlants_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.ListReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetPlantRequest, $0.PlantReply>(
        'GetPlant',
        getPlant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetPlantRequest.fromBuffer(value),
        ($0.PlantReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreatePlantRequest, $0.PlantReply>(
        'CreatePlant',
        createPlant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreatePlantRequest.fromBuffer(value),
        ($0.PlantReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdatePlantRequest, $0.PlantReply>(
        'UpdatePlant',
        updatePlant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdatePlantRequest.fromBuffer(value),
        ($0.PlantReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeletePlantRequest, $0.PlantReply>(
        'DeletePlant',
        deletePlant_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeletePlantRequest.fromBuffer(value),
        ($0.PlantReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListReply> listPlants_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return listPlants(call, await request);
  }

  $async.Future<$0.PlantReply> getPlant_Pre($grpc.ServiceCall call, $async.Future<$0.GetPlantRequest> request) async {
    return getPlant(call, await request);
  }

  $async.Future<$0.PlantReply> createPlant_Pre($grpc.ServiceCall call, $async.Future<$0.CreatePlantRequest> request) async {
    return createPlant(call, await request);
  }

  $async.Future<$0.PlantReply> updatePlant_Pre($grpc.ServiceCall call, $async.Future<$0.UpdatePlantRequest> request) async {
    return updatePlant(call, await request);
  }

  $async.Future<$0.PlantReply> deletePlant_Pre($grpc.ServiceCall call, $async.Future<$0.DeletePlantRequest> request) async {
    return deletePlant(call, await request);
  }

  $async.Future<$0.ListReply> listPlants($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.PlantReply> getPlant($grpc.ServiceCall call, $0.GetPlantRequest request);
  $async.Future<$0.PlantReply> createPlant($grpc.ServiceCall call, $0.CreatePlantRequest request);
  $async.Future<$0.PlantReply> updatePlant($grpc.ServiceCall call, $0.UpdatePlantRequest request);
  $async.Future<$0.PlantReply> deletePlant($grpc.ServiceCall call, $0.DeletePlantRequest request);
}
