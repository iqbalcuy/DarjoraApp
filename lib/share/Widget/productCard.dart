import 'package:darjoraapp/share/theme.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: (MediaQuery.of(context).size.width - 82) / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/productPict1.png'),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'White T-shirt',
                    style: subTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    't-shirt',
                    style: subTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 12,
                      color: kGreyColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Rp. 70.000,00',
                    style: subTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 12,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 10),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: kBlackColor,
                        padding: EdgeInsets.symmetric(
                          vertical: 6,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/detail-page');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icon_chart.png',
                            width: 18,
                            color: kWhiteColor,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Add to chart',
                            style: subTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: semiBold,
                                color: kWhiteColor),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
