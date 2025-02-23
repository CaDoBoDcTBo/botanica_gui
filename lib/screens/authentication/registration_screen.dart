import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'dart:math';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'verification_screen.dart';  // Импортируйте VerificationScreen
import 'login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  late String _verificationCode;
  bool _isEmailValid = true;

  Future<void> _sendVerificationEmail(String email) async {
    final credentials = await _loadCredentials();
    String username = credentials['username']!;
    String password = credentials['password']!;

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
    print(_verificationCode);
    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Verification email sent to $email')),
      );

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => VerificationScreen(
          email: _emailController.text,
          password: _passwordController.text,
          sentCode: _verificationCode)),
      );
      
    } on MailerException catch (e) {
      print('Message not sent. \n' + e.toString());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Email введен неверно. Попробуйте еще раз.')),
      );
      setState(() {
        _isEmailValid = false;
      });
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    } catch (e) {
      print('Unexpected error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Unexpected error occurred')),
      );
      setState(() {
        _isEmailValid = false;
      });
    }
  }

  // Функция для генерации случайного шестизначного числа
  String _generateVerificationCode() {
    final random = Random();
    return (random.nextInt(900000) + 100000).toString();
  }

  Future<Map<String, String>> _loadCredentials() async {
    final String response = await rootBundle.loadString('assets/credentials.json');
    final data = await json.decode(response);
    return {
      "username": data['username'],
      "password": data['password'],
    };
  }

  Future<void> _registerWithEmailAndPassword() async {
    // Сбрасываем состояние _isEmailValid перед каждой попыткой отправки сообщения
    setState(() {
      _isEmailValid = true;
    });

    if (_formKey.currentState!.validate()) {
      await _sendVerificationEmail(_emailController.text);
      // Trigger revalidation after email sending attempt
      _formKey.currentState!.validate();
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
            child: Form(
              key: _formKey,
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
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'name@example.com',
                        border: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2.0),
                        ),
                      ),
                      validator: (value) {
                        if (!_isEmailValid) {
                          return 'Invalid email address';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 300,  // Установите нужную ширину
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        //hintText: '••••••••',
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
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,  // Установите нужный цвет кнопки
                      minimumSize: Size(300, 50),  // Установите нужные размеры
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text('Verify your email', style: TextStyle(color: Colors.black)),
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginScreen()),
                            );
                          },
                          child: Text('Sign In', style: TextStyle(color: Colors.black)),
                        )
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
