import 'package:flutter/material.dart';
import 'plant_form_screen.dart';
import 'plant_model.dart';
import 'plant_profile_screen.dart';
import 'package:botanica_gui/services/plant_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PlantService _plantService = PlantService();
  List<Plant> plants = [];

  @override
  void initState() {
    super.initState();
    _fetchPlants();
  }

  Future<void> _fetchPlants() async {
    try {
      final plantReplies = await _plantService.listPlants();
      setState(() {
        plants = plantReplies.map((reply) => Plant(
          id: reply.id,
          name: reply.name,
          age: reply.age,
          // Добавьте поле заметок
          //notes: reply.notes ?? [],
        )).toList();
      });
    } catch (e) {
      print("Ошибка при получении растений: $e");
    }
  }

  Future<void> _deletePlant(int id) async {
    try {
      await _plantService.deletePlant(id);
      _fetchPlants();
    } catch (e) {
      print("Ошибка при удалении растения: $e");
    }
  }

  void _showDeleteConfirmationDialog(int id) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Удалить растение"),
          content: Text("Вы уверены, что хотите удалить это растение?"),
          actions: [
            TextButton(
              child: Text("Отмена"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Удалить"),
              onPressed: () {
                _deletePlant(id);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botanica'),
        backgroundColor: Color.fromARGB(255, 132, 245, 135),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _fetchPlants,
          ),
        ],
      ),
      body: plants.isEmpty
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: plants.length,
                itemBuilder: (context, index) {
                  final plant = plants[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(16.0),
                      title: Text(
                        plant.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: const Color.fromARGB(255, 18, 54, 19),
                        ),
                      ),
                      subtitle: Text('Возраст: ${plant.age} лет'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit, color: Color.fromARGB(255, 132, 245, 135)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PlantFormScreen(plant: plant),
                                ),
                              ).then((_) => _fetchPlants());
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              _showDeleteConfirmationDialog(plant.id);
                            },
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlantProfileScreen(plant: plant),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PlantFormScreen()),
          ).then((_) => _fetchPlants());
        },
        child: Icon(Icons.add,color: Colors.white),
        tooltip: 'Добавить растение',
        backgroundColor: Color.fromARGB(255, 132, 245, 135),
      ),
    );
  }
}
