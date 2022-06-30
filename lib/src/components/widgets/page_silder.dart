import 'package:flutter/material.dart';

class PageSlider extends StatelessWidget {
  final int? pageNumber;

  const PageSlider({Key? key, this.pageNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (pageNumber == 2) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 2,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Stack(
              children: [
                Container(
                  width: 50,
                  height: 2,
                  color: const Color(0xFFF3F3F3),
                ),
                Container(
                  width: 25,
                  height: 2,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            width: 50,
            height: 2,
            color: const Color(0xFFF3F3F3),
          )
        ],
      );
    }
    if (pageNumber == 3) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 2,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              width: 50,
              height: 2,
              color: Colors.black,
            ),
          ),
          Stack(
            children: [
              Container(
                width: 50,
                height: 2,
                color: const Color(0xFFF3F3F3),
              ),
              Container(
                width: 25,
                height: 2,
                color: Colors.black,
              ),
            ],
          ),
        ],
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              width: 50,
              height: 2,
              color: const Color(0xFFF3F3F3),
            ),
            Container(
              width: 25,
              height: 2,
              color: Colors.black,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            width: 50,
            height: 2,
            color: const Color(0xFFF3F3F3),
          ),
        ),
        Container(
          width: 50,
          height: 2,
          color: const Color(0xFFF3F3F3),
        )
      ],
    );
  }
}
