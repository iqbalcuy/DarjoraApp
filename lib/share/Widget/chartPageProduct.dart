import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../theme.dart';

class ChartItems extends StatelessWidget {
  const ChartItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
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
            Image.asset(
              'assets/productPict1.png',
              width: 96,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'White T-Shirt',
                  style: subTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  'T-Shirt',
                  style: subTextStyle.copyWith(
                    color: kGreyColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: kGreyColor),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Int',
                            style: subTextStyle,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'S',
                            style: subTextStyle,
                          ),
                          Transform.rotate(
                            angle: -90 * math.pi / 180,
                            child: Icon(
                              Icons.arrow_back_ios_new_outlined,
                              size: 16,
                              color: kBlackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: kGreyColor),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Qty',
                            style: subTextStyle,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '1',
                            style: subTextStyle,
                          ),
                          Transform.rotate(
                            angle: -90 * math.pi / 180,
                            child: Icon(
                              Icons.arrow_back_ios_new_outlined,
                              size: 16,
                              color: kBlackColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Rp. 70.000,00',
                  style: subTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: kBlackColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: SizedBox(
                    height: 33,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/checkout-page');
                      },
                      child: Text(
                        'Checkout',
                        style: subTextStyle.copyWith(
                            fontWeight: semiBold, color: kWhiteColor),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
