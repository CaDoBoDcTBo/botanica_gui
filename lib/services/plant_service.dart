import 'package:grpc/grpc.dart';
import '../generated/plant.pbgrpc.dart';
import 'package:botanica_gui/generated/google/protobuf/empty.pb.dart'; // Добавьте этот импорт

class PlantService {
  late PlantServiceClient _client;
  late ClientChannel _channel;

  PlantService() {
    _channel = ClientChannel(
      'localhost',// 'localhost',//'10.0.2.2',//  // Укажи IP сервера, если не локальный
      port: 5073,   // Используй актуальный порт сервера
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    _client = PlantServiceClient(_channel);
  }

  // Получить список всех растений
  Future<List<PlantReply>> listPlants() async {
    try {
      final response = await _client.listPlants(Empty());
      return response.plants;
  } catch (e) {
      rethrow;
  }
}


  /// Получить растение по ID
  Future<PlantReply> getPlant(int id) async {
    try {
      final request = GetPlantRequest()..id = id;
      return await _client.getPlant(request);
    } catch (e) {
      rethrow;
    }
  }

  /// Создать новое растение
  Future<PlantReply> createPlant(String name, int age) async {
    try {
      final request = CreatePlantRequest()
        ..name = name
        ..age = age;
      return await _client.createPlant(request);
    } catch (e) {
      rethrow;
    }
  }

  /// Обновить растение
  Future<PlantReply> updatePlant(int id, String name, int age) async {
    try {
      final request = UpdatePlantRequest()
        ..id = id
        ..name = name
        ..age = age;
      return await _client.updatePlant(request);
    } catch (e) {
      rethrow;
    }
  }

  /// Удалить растение
  Future<void> deletePlant(int id) async {
    try {
      final request = DeletePlantRequest()..id = id;
      await _client.deletePlant(request);
    } catch (e) {
      rethrow;
    }
  }

  /// Закрыть соединение
  Future<void> shutdown() async {
    await _channel.shutdown();
  }
}