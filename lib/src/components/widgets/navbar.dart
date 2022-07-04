import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(width: 0.05)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Badge(
            showBadge: false,
            position: const BadgePosition(top: 0, start: 14),
            badgeColor: const Color(0xFFFF4C5E),
            child: SvgPicture.asset(
              svgHome,
              height: 24,
              width: 24,
            ),
          ),
          Badge(
            showBadge: false,
            position: const BadgePosition(top: 0, start: 14),
            badgeColor: const Color(0xFFFF4C5E),
            child: SvgPicture.asset(
              svgDiscover,
              height: 24,
              width: 24,
            ),
          ),
          Badge(
            // showBadge: false,
            position: const BadgePosition(top: 0, start: 14),
            badgeColor: const Color(0xFFFF4C5E),
            child: SvgPicture.asset(
              svgDocument,
              height: 24,
              width: 24,
            ),
          ),
          Badge(
            showBadge: false,
            position: const BadgePosition(top: 0, start: 14),
            badgeColor: const Color(0xFFFF4C5E),
            child: SvgPicture.asset(
              svgHeart,
              height: 24,
              width: 24,
            ),
          ),
          Badge(
            showBadge: false,
            position: const BadgePosition(top: 0, start: 14),
            badgeColor: const Color(0xFFFF4C5E),
            child: SvgPicture.asset(
              svgProfile,
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
    );
  }
}
