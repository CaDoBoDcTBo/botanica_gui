import 'package:flutter/material.dart';
import 'plant_model.dart';
import 'package:botanica_gui/services/plant_service.dart'; // Импортируйте ваш сервис

class PlantFormScreen extends StatefulWidget {
  final Plant? plant;

  PlantFormScreen({this.plant});

  @override
  _PlantFormScreenState createState() => _PlantFormScreenState();
}

class _PlantFormScreenState extends State<PlantFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final PlantService _plantService = PlantService(); // Инициализируйте сервис
  late String _name;
  late int _age;

  @override
  void initState() {
    super.initState();
    if (widget.plant != null) {
      _name = widget.plant!.name;
      _age = widget.plant!.age;
    } else {
      _name = '';
      _age = 0;
    }
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      try {
        if (widget.plant == null) {
          // Создать новое растение
          await _plantService.createPlant(_name, _age);
        } else {
          // Обновить существующее растение
          await _plantService.updatePlant(widget.plant!.id, _name, _age);
        }
        Navigator.pop(context);
      } catch (e) {
        // Обработка ошибок
        print("Error submitting form: $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.plant == null ? 'Add Plant' : 'Edit Plant'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: _name,
                decoration: InputDecoration(labelText: 'Plant Name'),
                onSaved: (value) {
                  _name = value!;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              TextFormField(
                initialValue: _age.toString(),
                decoration: InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
                onSaved: (value) {
                  _age = int.parse(value!);
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an age';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text(widget.plant == null ? 'Create Plant' : 'Update Plant'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
