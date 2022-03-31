import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:equal/context_extension.dart';
import 'package:equal/pages/main_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:equal/pages/register_screen.dart';
import 'package:equal/context_extension.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            color: const Color.fromRGBO(255, 250, 242, 1),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: context.dynamicWidth(0.1),
                      right: context.dynamicWidth(0.1),
                      top: context.dynamicHeight(0.2),
                      bottom: context.dynamicHeight(0.01)),
                  padding: EdgeInsets.symmetric(
                      horizontal: context.dynamicWidth(0.03),
                      vertical: context.dynamicHeight(0.015)),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(212, 212, 212, 1),
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const FaIcon(
                    FontAwesomeIcons.signInAlt,
                    size: 80,
                    color: Color.fromRGBO(65, 155, 149, 1),
                  ),
                ),
                Column(
                  children: const [
                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            offset: Offset(0, 4),
                            blurRadius: 4.0,
                            color: Color.fromRGBO(0, 0, 0, .4),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: context.dynamicHeight(0.03),
                    left: context.dynamicWidth(0.03),
                    right: context.dynamicWidth(0.03),
                  ),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Email",
                      prefixIcon: const Icon(Icons.mail,
                          color: Color.fromRGBO(212, 212, 212, 1)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: context.dynamicHeight(0.02),
                    left: context.dynamicWidth(0.03),
                    right: context.dynamicWidth(0.03),
                  ),
                  child: TextField(
                    controller: password,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Password",
                      prefixIcon: const Icon(Icons.password,
                          color: Color.fromRGBO(212, 212, 212, 1)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: context.dynamicHeight(0.01),
                      left: context.dynamicWidth(0.6)),
                  child: InkWell(
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Color.fromRGBO(65, 155, 149, 1),
                          decoration: TextDecoration.underline,
                          fontSize: 16),
                    ),
                    onTap: () =>
                        launch("https://pub.dev/packages/url_launcher"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: context.dynamicHeight(0.01)),
                  child: ElevatedButton(
                    child: const Text("Sign in"),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainScreen())),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(58, 255, 223, 1),
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                      padding: EdgeInsets.symmetric(
                          horizontal: context.dynamicWidth(0.4),
                          vertical: context.dynamicHeight(0.03)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: context.dynamicWidth(0.2),
                      vertical: context.dynamicHeight(0.02)),
                  child: Row(
                    children: [
                      const Text("Don't have an account? "),
                      InkWell(
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                              color: Color.fromRGBO(65, 155, 149, 1),
                              decoration: TextDecoration.underline,
                              fontSize: 16),
                        ),
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
