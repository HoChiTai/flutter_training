import 'package:flutter/material.dart';

import '../constant.dart';

class ButtonSocial extends StatelessWidget {
  const ButtonSocial({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              'Get Start'.toUpperCase(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: (() {}),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: const Size(double.infinity, 50),
                      padding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 24),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: const Color(0xFFF3F3F3),
                        ),
                        child: Image.asset(
                          ggImg,
                          width: 20,
                          height: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          'Google'.toUpperCase(),
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: (() {}),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: const Size(double.infinity, 50),
                      padding: const EdgeInsets.symmetric(
                          vertical: 13, horizontal: 24),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: const BorderSide(color: Color(0xFFE7E7E7)))),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: const Color(0xFFF3F3F3),
                        ),
                        child: Image.asset(
                          fbImg,
                          width: 20,
                          height: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          'Facebook'.toUpperCase(),
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
