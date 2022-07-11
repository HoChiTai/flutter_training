import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrderState extends StatelessWidget {
  final String? state;
  const OrderState({Key? key, this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color? colorBg;
    Color? colorText;
    String? header;
    switch (state) {
      case "waiting":
        {
          colorBg = const Color(0xFFF3F3F3);
          colorText = const Color(0xFF6F6F6F);
          header = 'Waiting Payment';
          break;
        }

      case "shipping":
        {
          colorBg = const Color(0xFFFEFBE7);
          colorText = const Color(0xFFFCD240);
          header = 'Shipping';
          break;
        }
      case "delivery":
        {
          colorBg = const Color(0xFFEDF8EF);
          colorText = const Color(0xFF3BA285);
          header = 'Delivery';
          break;
        }
      case "cancel":
        {
          colorBg = const Color(0xFFFFF5F1);
          colorText = const Color(0xFFFF4C5E);
          header = 'Cancel';
          break;
        }
      case "done":
        {
          colorBg = const Color(0xFFEAF1FF);
          colorText = const Color(0xFF2952CC);
          header = 'Done';
          break;
        }
    }
    return Container(
      decoration: BoxDecoration(
        color: colorBg,
        borderRadius: BorderRadius.circular(
          100,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: Text(
          header!,
          style: TextStyle(
            color: colorText,
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
