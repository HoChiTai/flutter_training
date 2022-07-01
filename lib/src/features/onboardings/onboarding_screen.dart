import 'dart:async';

import 'package:first_app/src/components/widgets/button_social.dart';
import 'package:first_app/src/components/widgets/intro_page.dart';
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
                  children: [
                    IntroPage(
                      img: img1,
                      pageNumber: currentPage,
                      headline: headline1,
                      content: content,
                    ),
                    IntroPage(
                      img: img2,
                      pageNumber: currentPage,
                      headline: headline2,
                      content: content,
                    ),
                    IntroPage(
                      img: img3,
                      pageNumber: currentPage,
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
              const ButtonSocial(),
            ],
          ),
        ),
      ),
    );
  }
}
