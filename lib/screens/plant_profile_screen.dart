import 'package:flutter/material.dart';
import 'plant_model.dart';

class PlantProfileScreen extends StatelessWidget {
  final Plant plant;

  PlantProfileScreen({required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(plant.name),
        backgroundColor:Color.fromARGB(255, 132, 245, 135),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Название: ${plant.name}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                color: Color.fromARGB(255, 132, 245, 135),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Возраст: ${plant.age} лет',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Заметки:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 1,//plant.notes.length
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("Хуя, заметка"),//Text(plant.notes[index])
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Реализуйте функцию для добавления заметок
              },
              child: Text('Добавить заметку'),
              style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 132, 245, 135)),
            ),
          ],
        ),
      ),
    );
  }
}
