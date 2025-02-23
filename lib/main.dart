import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'screens/home_screen.dart';
import 'screens/authentication/registration_screen.dart';  

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isVerified = false;//prefs.getBool('isVerified') ?? false;

  runApp(MyApp(isVerified: isVerified));
}

class MyApp extends StatelessWidget {
  final bool isVerified;

  const MyApp({super.key, required this.isVerified});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Botanica',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: isVerified ? HomeScreen() : RegistrationScreen(),
    );
  }
}
