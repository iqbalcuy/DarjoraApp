import 'dart:async';

import 'package:darjoraapp/pages/login_page.dart';
import 'package:darjoraapp/share/theme.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/login-page');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'DARJORA',
              style: mainTextStyle.copyWith(
                color: kWhiteColor,
                fontSize: 40,
                fontWeight: regular,
                letterSpacing: 8,
              ),
            ),
          ),
          Text(
            'ONLINE CLOTHING STORE SIDOARJO',
            style: mainTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 10,
              color: kWhiteColor,
              letterSpacing: 2,
            ),
          )
        ],
      ),
    );
  }
}
