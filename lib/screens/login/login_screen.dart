import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:starbucks_mobile_app_ui/constants/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginFormKey = GlobalKey<FormState>();

  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/login_background.png"),
        ),
      ),
      child: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo row
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Row(
                    children: [
                      Image.asset("assets/images/starbucks_logo.png"),
                    ],
                  ),
                ),
                // Welcome text row
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back!",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        color: HexColor(dark),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 100, top: 11),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor",
                        style: TextStyle(color: HexColor(darkGrey)),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
                // Form
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Form(
                    key: _loginFormKey,
                    child: Column(
                      children: [
                        // Email text field
                        Padding(
                          padding: const EdgeInsets.only(bottom: 11),
                          child: Material(
                            elevation: 5,
                            shadowColor: Colors.black,
                            borderRadius: BorderRadius.circular(5),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide:
                                      const BorderSide(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Password Text field
                        Material(
                          elevation: 5,
                          shadowColor: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                          child: TextField(
                            obscureText: showPassword ? false : true,
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showPassword = !showPassword;
                                  });
                                },
                                child: const Icon(Icons.remove_red_eye),
                              ),
                              hintText: "Password",
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    const BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 11, bottom: 11),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  print("Forgot password clicked");
                                },
                                child: Text(
                                  "Forgot your password?",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: HexColor(darkGrey)),
                                ),
                              )
                            ],
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(348, 55),
                            backgroundColor: HexColor(mainGreen),
                          ),
                          onPressed: () {
                            print("Login tapped");
                          },
                          child: const Text("Login"),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
