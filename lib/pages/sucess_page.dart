import 'package:darjoraapp/share/theme.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 200, bottom: 100),
        padding: EdgeInsets.symmetric(
          horizontal: 84,
        ),
        child: Column(
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/bag_icon.png',
                    width: 178,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Your Transaction is Success',
                    style: subTextStyle.copyWith(
                      fontSize: 40,
                      fontWeight: bold,
                      color: kGreyColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: kBlackColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/main-page', (route) => false);
                  },
                  child: Text(
                    'Shopping again',
                    style: subTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 20,
                      color: kWhiteColor,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
