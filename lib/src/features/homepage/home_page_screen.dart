import 'package:badges/badges.dart';
import 'package:first_app/src/components/constant.dart';
import 'package:first_app/src/components/widgets/brand_item.dart';
import 'package:first_app/src/components/widgets/navbar.dart';
import 'package:first_app/src/components/widgets/product_item.dart';
import 'package:first_app/src/components/widgets/product_popular.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icon_decoration/icon_decoration.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30)
                    .copyWith(top: 64, bottom: 30),
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
                      suffixIcon: SvgPicture.asset(
                        svgCamera,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Image.asset(imgHomePage),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 38,
                            height: 18,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xFF52BD94),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              'New'.toUpperCase(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              'Nike Air Max 98 Noir Black ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text(
                              "\$ 89,99 USD",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 40,
                                height: 2,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 4),
                                width: 6,
                                height: 2,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 4),
                                width: 6,
                                height: 2,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 4),
                                width: 6,
                                height: 2,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 4),
                                width: 6,
                                height: 2,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30)
                    .copyWith(top: 40, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Brands',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'SEE ALL',
                      style: TextStyle(
                        color: Color(0xFFB7B7B7),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      BrandItem(name: 'Nike', svg: svgNike, amount: 1001),
                      BrandItem(name: 'Puma', svg: svgPuma, amount: 601),
                      BrandItem(name: 'Nike', svg: svgNike, amount: 709),
                      BrandItem(name: 'Nike', svg: svgNike, amount: 505),
                      BrandItem(name: 'Nike', svg: svgNike, amount: 505),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30)
                    .copyWith(top: 40, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Special For Your',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'SEE ALL',
                      style: TextStyle(
                        color: Color(0xFFB7B7B7),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      ProductItem(),
                      ProductItem(),
                      ProductItem(),
                      ProductItem(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30)
                    .copyWith(top: 40, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Most Popular',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'SEE ALL',
                      style: TextStyle(
                        color: Color(0xFFB7B7B7),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30)
                    .copyWith(bottom: 30),
                child: Column(
                  children: const [
                    ProductPopular(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: ProductPopular(),
                    ),
                    ProductPopular(),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: const NavBar());
  }
}
