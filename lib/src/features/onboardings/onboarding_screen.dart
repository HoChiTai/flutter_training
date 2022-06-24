import 'package:flutter/material.dart';

import '../../components/constant.dart';
import '../../components/widgets/button_social.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Image.asset(img1),
            const Padding(
              padding:
                  EdgeInsets.only(top: 33, bottom: 20, left: 35, right: 35),
              child: Text(
                "Enjoy The New Arrival Product",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 60, left: 55, right: 55),
              child: Text(
                "Get your dream item easily and safely with Shoesly. and get other interesting offers",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30)
                  .copyWith(bottom: 20),
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
                  Expanded(child: ButtonSocial(icon: ggImg, name: 'Google')),
                  SizedBox(width: 15),
                  Expanded(child: ButtonSocial(icon: fbImg, name: 'Facebook'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
