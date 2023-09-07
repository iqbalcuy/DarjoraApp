import 'package:flutter/material.dart';

import '../theme.dart';

class DetailCheckout1 extends StatelessWidget {
  final String text1;
  final String text2;
  final Color color;
  DetailCheckout1(
      {super.key,
      required this.text1,
      required this.text2,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: subTextStyle.copyWith(fontSize: 16),
          ),
          Text(
            text2,
            style: subTextStyle.copyWith(fontSize: 16, color: color),
          )
        ],
      ),
    );
  }
}
