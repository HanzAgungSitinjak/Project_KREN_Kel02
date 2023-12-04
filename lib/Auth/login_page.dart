import 'package:flutter/material.dart';
import 'package:mathplay_app/Auth//signup_page.dart';
import 'package:mathplay_app/splash_page.dart';


class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    double buttonWidth = MediaQuery.of(context).size.width * 0.8;
    double buttonHeight = MediaQuery.of(context).size.width * 0.12;
    return Scaffold(
      backgroundColor: Color(0xFF13877E),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 70),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF13877E),
              ),
              child: Column(
                children: [
                  Text(
                    'Math Play Gasing',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Selamat datang kembali, Pahlawan',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.white), // Warna border sesuai keinginan
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.white), // Warna border sesuai keinginan
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {

                      // Tambahkan logika untuk menangani login di sini
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(buttonWidth, buttonHeight),
                      backgroundColor: Color(0xFF023A3F),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text('Login'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
