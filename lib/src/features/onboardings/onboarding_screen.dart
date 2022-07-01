import 'dart:async';

import 'package:first_app/src/components/widgets/button_social.dart';
import 'package:first_app/src/components/widgets/intro_page.dart';
import 'package:first_app/src/features/sign_up/login_page_screen.dart';
import 'package:first_app/src/features/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../../components/constant.dart';
import '../../components/widgets/page_silder.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  onPageChanged: (index) => {
                    setState(() {
                      currentPage = index + 1;
                    })
                  },
                  controller: PageController(initialPage: 1),
                  children: const [
                    IntroPage(
                      img: img1,
                      headline: headline1,
                      content: content,
                    ),
                    IntroPage(
                      img: img2,
                      headline: headline2,
                      content: content,
                    ),
                    IntroPage(
                      img: img3,
                      headline: headline3,
                      content: content,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: PageSlider(
                  pageNumber: currentPage,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
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
                    "Get Start".toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const ButtonSocial(),
            ],
          ),
        ),
      ),
    );
  }
}
