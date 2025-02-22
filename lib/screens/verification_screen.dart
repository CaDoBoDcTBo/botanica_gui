import 'package:flutter/material.dart';
import 'registration_screen.dart';  // Импортируйте RegistrationScreen
import 'package:shared_preferences/shared_preferences.dart';
import 'home_screen.dart';

class VerificationScreen extends StatefulWidget {
  final String email;
  final String sentCode;  // Добавьте это поле для передачи сгенерированного кода

  VerificationScreen({required this.email, required this.sentCode});

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final _codeController = TextEditingController();

  Future<void> _verifyCode() async {
    String enteredCode = _codeController.text;
    String sentCode = widget.sentCode;  // Используйте переданный сгенерированный код

    if (enteredCode == sentCode) {
      // Сохраните статус верификации в локальном хранилище
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isVerified', true);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid verification code. Please try again.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email Verification'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _codeController,
              decoration: InputDecoration(labelText: 'Verification Code'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _verifyCode,
              child: Text('Verify'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationScreen()),
                );
              },
              child: Text('Go back to Registration'),
            ),
          ],
        ),
      ),
    );
  }
}
