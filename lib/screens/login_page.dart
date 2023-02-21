import 'package:flutter/material.dart';
import 'package:weather_app/screens/home_page.dart';

import '../widgets/email_password_fields.dart';
import '../widgets/fb_google_btns.dart';
import '../widgets/auth_btn.dart';
import 'registration_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Access account',
                    style: TextStyle(
                      color: (MediaQuery.of(context).platformBrightness ==
                              Brightness.dark
                          ? Colors.white38
                          : Colors.black38),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const FbGoogleBtns(),
                  const SizedBox(height: 10),
                  Text(
                    "or Login with Email",
                    style: TextStyle(
                      color: (MediaQuery.of(context).platformBrightness ==
                              Brightness.dark
                          ? Colors.white38
                          : Colors.black38),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const EmailPasswordFields(),
                  TextButton(
                      onPressed: () {}, child: const Text('Forgot password?')),
                  const SizedBox(
                    height: 20,
                  ),
                  AuthBtn(
                    btnText: 'Login',
                    btnText2: 'Register',
                    haveAccount: "Don't have an account?",
                    haveAccountBtn: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RegistrationPage(),
                      ));
                    }, onPressed: () {  Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      )); },
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
