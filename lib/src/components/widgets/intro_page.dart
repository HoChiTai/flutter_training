import 'package:flutter/material.dart';

import '../constant.dart';
import 'page_silder.dart';

class IntroPage extends StatelessWidget {
  final String? img;
  final int? pageNumber;
  final String? headline;
  final String? content;
  const IntroPage(
      {Key? key, this.img, this.pageNumber, this.headline, this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(img ?? img1),
      Padding(
        padding: const EdgeInsets.only(top: 0, bottom: 20, left: 35, right: 35),
        child: Text(
          headline!,
          style: const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 50, left: 55, right: 55),
        child: Text(
          content!,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ]);
  }
}
