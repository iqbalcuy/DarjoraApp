import 'package:darjoraapp/share/Widget/detailcheckout1.dart';
import 'package:flutter/material.dart';

import '../share/theme.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhite2Color,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 52, bottom: 18),
                    child: Icon(
                      Icons.navigate_before,
                      color: kBlackColor,
                      size: 60,
                    ),
                  ),
                ),
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
                          'Checkout',
                          style: subTextStyle.copyWith(
                            fontSize: 30,
                            fontWeight: bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/productPict1.png',
                              width: 47,
                            ),
                            Text(
                              'White T-Shirt',
                              style: subTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              DetailCheckout1(
                                text1: 'Kategory',
                                text2: 't-shirt',
                                color: kBlackColor,
                              ),
                              DetailCheckout1(
                                text1: 'Qty',
                                text2: '1',
                                color: kBlackColor,
                              ),
                              DetailCheckout1(
                                text1: 'Int',
                                text2: 'S',
                                color: kBlackColor,
                              ),
                              DetailCheckout1(
                                text1: 'Refundable',
                                text2: 'yes',
                                color: kGrenColor,
                              ),
                              DetailCheckout1(
                                text1: 'Coba dulu',
                                text2: 'Yes',
                                color: kGrenColor,
                              ),
                              DetailCheckout1(
                                text1: 'COD',
                                text2: 'Yes',
                                color: kGrenColor,
                              ),
                              DetailCheckout1(
                                text1: 'Insurance',
                                text2: 'No',
                                color: kRedColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  'Pengiriman dan Pembayaran',
                  style: subTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pengiriman Reguler (2-4 hari)',
                              style: subTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'AnterTerus',
                              style: subTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: light,
                                color: kGreyColor,
                              ),
                            ),
                            Text(
                              'Rp 18.500',
                              style: subTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: light,
                                color: kGreyColor,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.chevron_right,
                          size: 30,
                          color: kGreyColor,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
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
                          'mBanking',
                          style: subTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: bold,
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          size: 30,
                          color: kGreyColor,
                        ),
                      ],
                    ),
                  ),
                ),
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
                    child: Column(
                      children: [
                        DetailCheckout1(
                            text1: 'Harga',
                            text2: 'Rp 70.000,00',
                            color: kBlackColor),
                        DetailCheckout1(
                            text1: 'Biaya\npenanganan',
                            text2: 'Rp 1.000,00',
                            color: kBlackColor),
                        DetailCheckout1(
                            text1: 'Onkir',
                            text2: 'Rp 18.500,00',
                            color: kBlackColor),
                        DetailCheckout1(
                            text1: 'Total',
                            text2: 'Rp 89.500,00',
                            color: kBlackColor),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 14),
                  padding: EdgeInsets.symmetric(vertical: 7),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kBlackColor,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/success-page', (route) => false);
                    },
                    child: Text(
                      'Buy now',
                      style: subTextStyle.copyWith(
                        color: kWhiteColor,
                        fontWeight: semiBold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
