import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'dart:math';
import 'verification_screen.dart';  // Импортируйте VerificationScreen

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  late String _verificationCode;

  Future<void> _sendVerificationEmail(String email) async {
    String username = '';
    String password = '';

    final smtpServer = SmtpServer(
      'smtp.yandex.ru',
      port: 465,
      ssl: true,
      username: username,
      password: password,
    );

    // Генерация случайного шестизначного кода
    _verificationCode = _generateVerificationCode();

    final message = Message()
      ..from = Address(username, 'Botanica')
      ..recipients.add(email)
      ..subject = 'Email Verification Code'
      ..text = 'Your verification code is: $_verificationCode';

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Verification email sent to $email')),
      );
    } on MailerException catch (e) {
      print('Message not sent. \n' + e.toString());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to send verification email')),
      );
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    } catch (e) {
      print('Unexpected error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Unexpected error occurred')),
      );
    }
  }

  // Функция для генерации случайного шестизначного числа
  String _generateVerificationCode() {
    final random = Random();
    return (random.nextInt(900000) + 100000).toString();
  }

  Future<void> _registerWithEmailAndPassword() async {
    await _sendVerificationEmail(_emailController.text);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => VerificationScreen(email: _emailController.text, sentCode: _verificationCode)),
    );
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
              fontFamily: 'Serif',  // Замените на шрифт по вашему выбору
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
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Serif',  // Замените на шрифт по вашему выбору
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 300,  // Установите нужную ширину
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'name@example.com',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 300,  // Установите нужную ширину
                  child: TextField(
                    controller: _passwordController,
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: '••••••••',
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _registerWithEmailAndPassword,
                  child: Text('Verify your email', style: TextStyle(color: Colors.black)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,  // Установите нужный цвет кнопки
                    minimumSize: Size(300, 50),  // Установите нужные размеры
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 140,  // Ширина кнопки Forgot Password
                      child: TextButton(
                        onPressed: () {
                          // Обработка восстановления пароля
                        },
                        child: Text('Forgot Password?', style: TextStyle(color: Colors.black)),
                      ),
                    ),
                    Container(
                      width: 140,  // Ширина кнопки Sign In
                      child: TextButton(
                        onPressed: () {
                          // Обработка входа
                        },
                        child: Text('Sign In', style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
