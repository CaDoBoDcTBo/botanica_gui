import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:grpc/grpc.dart';
import 'package:botanica_gui/generated/plant.pbgrpc.dart';  // Обновите путь к сгенерированным gRPC-классам
import '../home_screen.dart';
import 'registration_screen.dart';  // Импортируйте RegistrationScreen


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

      // Создаем канал для gRPC
      final channel = ClientChannel(
        'localhost',
        port: 5073,
        options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
      );

      // Создаем клиента для Authentication
      final authClient = AuthenticationClient(channel);

      try {
        // Сначала выполняем регистрацию
        final registerResponse = await authClient.register(RegisterRequest()
          ..username = widget.email
          ..password = widget.password);

        if (registerResponse.success) {
          // Если регистрация успешна, выполняем вход для получения JWT токена
          final loginResponse = await authClient.login(LoginRequest()
            ..username = widget.email
            ..password = widget.password);

          if (loginResponse.token.isNotEmpty) {
            print('Token: ${loginResponse.token}');

            // Сохраните токен в локальном хранилище
            await prefs.setString('token', loginResponse.token);

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Failed to obtain token. Please try again.')),
            );
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Registration failed. Please try again.')),
          );
        }

        // Закрытие канала
        await channel.shutdown();
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${e.toString()}')),
        );
      }
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
