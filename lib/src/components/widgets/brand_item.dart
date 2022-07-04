import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BrandItem extends StatelessWidget {
  final String? name;
  final String? svg;
  final int? amount;
  const BrandItem({Key? key, this.name, this.svg, this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xFFF3F3F3),
            ),
            child: SvgPicture.asset(
              svg!,
              fit: BoxFit.scaleDown,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 14, bottom: 4),
            child: Text(
              name!.toUpperCase(),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Text(
            '${amount!} Items',
            style: const TextStyle(
              color: Color(0xFFB7B7B7),
              fontSize: 11,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
