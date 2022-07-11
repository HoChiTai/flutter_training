import 'package:first_app/src/features/discover/discover_screen.dart';
import 'package:first_app/src/features/discover/product_detail.dart';
import 'package:first_app/src/features/discover/product_filter.dart';
import 'package:first_app/src/features/discover/product_review.dart';
import 'package:first_app/src/features/homepage/brand_list_screen.dart';
import 'package:first_app/src/features/homepage/category_brands_screen.dart';
import 'package:first_app/src/features/homepage/home_page_screen.dart';
import 'package:first_app/src/features/onboardings/onboarding_screen.dart';
import 'package:first_app/src/features/ordermenu/order_screen.dart';
import 'package:first_app/src/features/ordermenu/profile_screen.dart';
import 'package:first_app/src/features/ordermenu/setting_screen.dart';
import 'package:first_app/src/features/ordermenu/wishlist_screen.dart';
import 'package:first_app/src/features/sign_up/login_page_screen.dart';
import 'package:first_app/src/features/sign_up/sign_up_screen.dart';
import 'package:first_app/src/features/sign_up/sign_up_success_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SettingScreen(),
  ));
}
