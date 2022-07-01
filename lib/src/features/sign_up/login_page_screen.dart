import 'package:first_app/src/components/widgets/button_social.dart';
import 'package:first_app/src/features/sign_up/sign_up_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../components/widgets/input_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 94, left: 30, right: 30),
            child: const Text(
              "Sign In",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(bottom: 71, left: 30, right: 30),
            child: const Text(
              "Please sign up to your Shoesly Account",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Form(
              child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Email",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter your email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30)
                    .copyWith(top: 30),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Password",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      )),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    obscureText: _passwordVisible,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: const Color(0xFF101010),
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                  )),
            ],
          )),
          const Expanded(child: Text('')),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
              onPressed: (() {}),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: const Size(double.infinity, 50),
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  )),
              child: Text(
                "Sign In".toUpperCase(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          const ButtonSocial(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(width: 15),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: RichText(
                  text: TextSpan(children: [
                const TextSpan(
                  text: "Join with us, ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                    text: "Create Account",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()),
                        );
                      }),
              ])),
            ),
          )
        ],
      ),
    );
  }
}
