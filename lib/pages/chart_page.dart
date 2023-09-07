import 'package:darjoraapp/share/Widget/chartPageProduct.dart';
import 'package:darjoraapp/share/theme.dart';
import 'package:flutter/material.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite2Color,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 28, right: 28, top: 116, bottom: 40),
            child: Column(
              children: [
                Card(
                  elevation: 5,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Chart',
                          style: subTextStyle.copyWith(
                            fontSize: 30,
                            fontWeight: bold,
                          ),
                        ),
                        Text(
                          '4 item',
                          style: subTextStyle.copyWith(
                            color: kGreyColor,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ChartItems(),
                ChartItems(),
                ChartItems(),
                ChartItems(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
