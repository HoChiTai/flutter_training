import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icon_decoration/icon_decoration.dart';

import '../constant.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xfff3f3f3),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(svgNike, color: Colors.grey),
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: const DecoratedIcon(
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 14,
                        ),
                        decoration:
                            IconDecoration(border: IconBorder(width: 2)),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 22),
                  child: Image.asset(product1),
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 15),
          child: Text(
            'Jordan 1 Retro High Tie Dye',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 5),
          child: Row(
            children: [
              SvgPicture.asset(svgStar),
              const Padding(
                padding: EdgeInsets.only(left: 6, right: 5),
                child: Text(
                  '4.5',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Text(
                '(1045 Reviews)',
                style: TextStyle(
                  color: Color(0xFFB7B7B7),
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        const Text(
          '\$235,00',
          style: TextStyle(
            color: Color(0xFF101010),
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
