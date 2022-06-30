import 'package:flutter/material.dart';

import '../../components/widgets/input_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
              "Sign Up",
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
          const InputField(
            nameField: "Email",
            contextField: "pristia@gmail.com",
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50, bottom: 107),
            child: InputField(
              nameField: "Password",
              contextField: "secret1234567",
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 20),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.black,
              ),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Get started".toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
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
              padding: const EdgeInsets.only(top: 20),
              child: RichText(
                  text: const TextSpan(children: [
                TextSpan(
                  text: "Join with us, ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: "Create Account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ])),
            ),
          )
        ],
      ),
    );
  }
}
