import 'package:first_app/src/features/sign_up/sign_up_success_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../components/widgets/button_social.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _passwordVisible1 = true;
  bool _passwordVisible2 = true;
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 94, left: 30, right: 30),
              child: const Text(
                "Create Account",
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
                    child: Text("Name",
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
                      hintText: 'Enter your name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30)
                      .copyWith(top: 30),
                  child: const Align(
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
                      obscureText: _passwordVisible1,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible1
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: const Color(0xFF101010),
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible1 = !_passwordVisible1;
                            });
                          },
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30)
                      .copyWith(top: 30),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Confirm Password",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      obscureText: _passwordVisible2,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible2
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: const Color(0xFF101010),
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible2 = !_passwordVisible2;
                            });
                          },
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30)
                      .copyWith(top: 30),
                  child: Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.black,
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 14),
                        child: SizedBox(
                          width: 260,
                          child: RichText(
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                      text: "By Signing up, you agree to the ",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF6F6F6F),
                                      )),
                                  TextSpan(
                                      text: "Terms of Service ",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF101010),
                                      )),
                                  TextSpan(
                                      text: "and ",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF6F6F6F),
                                      )),
                                  TextSpan(
                                      text: "Privacy Policy",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF101010),
                                      )),
                                ],
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30).copyWith(top: 50),
              child: ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpSuccess()),
                  );
                }),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: const Size(double.infinity, 50),
                    padding: const EdgeInsets.symmetric(
                        vertical: 13, horizontal: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )),
                child: Text(
                  "Create Account".toUpperCase(),
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
                    text: "Have Account?, ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                      text: "Sign Up Now",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                        }),
                ])),
              ),
            )
          ],
        ),
      ),
    );
  }
}
