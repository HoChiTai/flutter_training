import 'package:badges/badges.dart';
import 'package:first_app/src/components/widgets/product_popular.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/constant.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Discover',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Badge(
                      position: const BadgePosition(top: 0, start: 14),
                      badgeColor: const Color(0xFFFF4C5E),
                      child: SvgPicture.asset(svgBag),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: const Color(0xFFF3F3F3)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Color(0xFFB7B7B7)),
                      border: InputBorder.none,
                      hintText: "What are you looking for?",
                      icon: SvgPicture.asset(svgSearch),
                    ),
                  ),
                ),
              ),
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: ProductPopular(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: ProductPopular(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: ProductPopular(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
