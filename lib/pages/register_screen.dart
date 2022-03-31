import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:equal/context_extension.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final name = TextEditingController();
  final lastName = TextEditingController();
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
                      left: context.dynamicWidth(0.01),
                      right: context.dynamicWidth(0.01),
                      top: context.dynamicHeight(0.10),
                      bottom: context.dynamicHeight(0.05)),
                  padding: EdgeInsets.symmetric(
                      vertical: context.dynamicHeight(0.03),
                      horizontal: context.dynamicWidth(0.04)),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(212, 212, 212, 1),
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const FaIcon(
                    FontAwesomeIcons.users,
                    size: 60,
                    color: Color.fromRGBO(65, 155, 149, 1),
                  ),
                ),
                Column(
                  children: const [
                    Text(
                      "Create an Account",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: context.dynamicHeight(0.01),
                      horizontal: context.dynamicWidth(0.03)),
                  child: TextField(
                    controller: name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "First Name",
                      prefixIcon: const Icon(Icons.assignment_ind,
                          color: Color.fromRGBO(212, 212, 212, 1)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: context.dynamicHeight(0.01),
                      horizontal: context.dynamicWidth(0.03)),
                  child: TextField(
                    controller: lastName,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Last Name",
                      prefixIcon: const Icon(Icons.assignment_ind,
                          color: Color.fromRGBO(212, 212, 212, 1)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: context.dynamicHeight(0.01),
                      horizontal: context.dynamicWidth(0.03)),
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
                  margin: EdgeInsets.symmetric(
                      vertical: context.dynamicHeight(0.01),
                      horizontal: context.dynamicWidth(0.03)),
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
                  margin: EdgeInsets.symmetric(
                      vertical: context.dynamicHeight(0.01),
                      horizontal: context.dynamicWidth(0.01)),
                  child: ElevatedButton(
                    child: const Text("Sign up"),
                    onPressed: () => (context),
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(58, 255, 223, 1),
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                      padding: EdgeInsets.symmetric(
                          vertical: context.dynamicHeight(0.03),
                          horizontal: context.dynamicWidth(0.4)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: context.dynamicHeight(0.01),
                      horizontal: context.dynamicWidth(0.2)),
                  child: Row(
                    children: [
                      const Text("Already have an account? "),
                      InkWell(
                          child: const Text(
                            "Sign in",
                            style: TextStyle(
                                color: Color.fromRGBO(65, 155, 149, 1),
                                decoration: TextDecoration.underline,
                                fontSize: 16),
                          ),
                          onTap: () => Navigator.pop(context)),
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
