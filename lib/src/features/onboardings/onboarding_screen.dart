import 'dart:async';

import 'package:first_app/src/components/widgets/button_social.dart';
import 'package:first_app/src/components/widgets/intro_page.dart';
import 'package:flutter/material.dart';

import '../../components/constant.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 1;
  final PageController _pageController = PageController(
    initialPage: 1,
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      return setState(() {
        if (_currentPage < 3) {
          _currentPage++;
        } else {
          _currentPage = 1;
        }
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      });
    });
  }

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
                  controller: _pageController,
                  children: const [
                    IntroPage(
                      img: img1,
                      pageNumber: 1,
                      headline: headline1,
                      content: content,
                    ),
                    IntroPage(
                      img: img2,
                      pageNumber: 2,
                      headline: headline2,
                      content: content,
                    ),
                    IntroPage(
                      img: img3,
                      pageNumber: 3,
                      headline: headline3,
                      content: content,
                    ),
                  ],
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
