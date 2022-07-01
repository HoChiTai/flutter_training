import 'package:first_app/src/components/widgets/intro_page.dart';
import 'package:flutter/material.dart';

import '../../components/constant.dart';

class SignUpSuccess extends StatelessWidget {
  const SignUpSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const IntroPage(
              img: img4,
              headline: "Welcome To The Club Of Shoesly!",
              content: "Your account has ben success",
            ),
            const Expanded(child: Text('')),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30)
                  .copyWith(bottom: 20),
              child: ElevatedButton(
                onPressed: (() {}),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: const Size(double.infinity, 50),
                    padding: const EdgeInsets.symmetric(
                        vertical: 13, horizontal: 24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )),
                child: Text(
                  "Let’s Search Shoes!".toUpperCase(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
