import 'package:badges/badges.dart';
import 'package:first_app/src/components/constant.dart';
import 'package:first_app/src/components/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryBrandsScreen extends StatefulWidget {
  const CategoryBrandsScreen({Key? key}) : super(key: key);

  @override
  State<CategoryBrandsScreen> createState() => _CategoryBrandsScreenState();
}

class _CategoryBrandsScreenState extends State<CategoryBrandsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30)
                .copyWith(top: 30, bottom: 35),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Casual Shoes',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Running Shoes ',
                      style: TextStyle(
                        color: Color(0xFFB7B7B7),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Basketball Shoes',
                      style: TextStyle(
                        color: Color(0xFFB7B7B7),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Football Shoes',
                      style: TextStyle(
                        color: Color(0xFFB7B7B7),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: ProductItem(),
                          ),
                          ProductItem(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: ProductItem(),
                          ),
                          ProductItem(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: ProductItem(),
                          ),
                          ProductItem(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: ProductItem(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Badge(
            position: const BadgePosition(top: -2, start: 16),
            badgeColor: const Color(0xFFFF4C5E),
            child: SvgPicture.asset(svgSetting)),
        label: const Text('FILTER'),
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 20, top: 30),
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 30),
            child: Row(
              children: [
                SvgPicture.asset(svgSearch),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SvgPicture.asset(svgBag),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
