import 'package:flutter/material.dart';
import 'registration_screen.dart';  // Импортируйте RegistrationScreen
import 'package:shared_preferences/shared_preferences.dart';
import '../home_screen.dart';

class VerificationScreen extends StatefulWidget {
  final String email;
  final String password;  // Добавьте это поле для передачи пароля
  final String sentCode;  // Добавьте это поле для передачи сгенерированного кода

  const VerificationScreen({super.key, required this.email, required this.password, required this.sentCode});

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
        title: Padding(
          padding: const EdgeInsets.only(top: 16.0),  // Добавьте отступ сверху
          child: Text(
            'Botanica',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontFamily: 'Serif',
            ),
            textAlign: TextAlign.center,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Email Verification',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Serif',
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 300,
                  child: TextField(
                    controller: _codeController,
                    decoration: InputDecoration(
                      labelText: 'Verification Code',
                      hintText: '123456',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _verifyCode,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,  // Установите нужный цвет кнопки
                    minimumSize: Size(300, 50),  // Установите нужные размеры
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Verify', style: TextStyle(color: Colors.black)),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => RegistrationScreen()),
                    );
                  },
                  child: Text('Go back to Registration', style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
