import 'package:flutter/material.dart';

import '../share/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  bool isShowPasswordError = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, right: 32, left: 32),
          child: Column(
            children: [
              Text(
                'DARJORA',
                style: mainTextStyle.copyWith(
                  color: kBlackColor,
                  fontSize: 40,
                  fontWeight: regular,
                  letterSpacing: 8,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Login with your email',
                style: subTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 30),
          padding: EdgeInsets.all(13),
          decoration: BoxDecoration(
            border: Border.all(color: kBlackColor),
            color: kWhiteColor,
          ),
          child: TextFormField(
            controller: emailController,
            cursorColor: kBlackColor,
            decoration: InputDecoration.collapsed(
              hintText: 'Email',
              hintStyle: mainTextStyle.copyWith(
                fontSize: 16,
                color: kGreyColor,
              ),
            ),
          ),
        );
      }

      Widget passwordInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 16),
          padding: EdgeInsets.all(13),
          decoration: BoxDecoration(
            border: Border.all(color: kBlackColor),
            color: kWhiteColor,
          ),
          child: TextFormField(
            controller: passwordController,
            obscureText: true,
            cursorColor: kBlackColor,
            decoration: InputDecoration.collapsed(
              hintText: 'Password',
              hintStyle: mainTextStyle.copyWith(
                fontSize: 16,
                color: kGreyColor,
              ),
            ),
          ),
        );
      }

      Widget forgotPassButton() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isShowPasswordError)
              Container(
                margin: EdgeInsets.only(bottom: 5),
                child: Text(
                  'password kamu salah',
                  style: mainTextStyle.copyWith(
                    fontSize: 14,
                    color: kRedColor,
                  ),
                ),
              ),
            Text(
              'forgot Password ?',
              style: mainTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 12,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        );
      }

      Widget submitButton() {
        return Container(
          height: 55,
          width: double.infinity,
          child: TextButton(
            onPressed: () {
              setState(() {
                isLoading = true;
              });

              Future.delayed(Duration(seconds: 2), () {
                setState(() {
                  isLoading = false;
                });
                if (passwordController.text != '123123') {
                  setState(() {
                    isShowPasswordError = true;
                  });
                } else {
                  Navigator.pushNamed(context, '/main-page');
                }
              });
            },
            style: TextButton.styleFrom(
              backgroundColor: kBlackColor,
            ),
            child: isLoading
                ? CircularProgressIndicator(
                    color: kWhiteColor,
                    backgroundColor: kGreyColor,
                  )
                : Text(
                    'Login',
                    style: mainTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 18,
                      color: kWhite2Color,
                    ),
                  ),
          ),
        );
      }

      Widget signupAndTACSection() {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New to DARJORA?',
                  style: mainTextStyle.copyWith(
                    color: kBlackColor,
                    fontWeight: regular,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: subTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: bold,
                      color: kBlueColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Terms and Conditions',
              style: subTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                letterSpacing: 1.6,
                color: kGreyColor,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        );
      }

      return Container(
        decoration: BoxDecoration(color: kWhiteColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            emailInput(),
            passwordInput(),
            forgotPassButton(),
            SizedBox(
              height: 50,
            ),
            submitButton(),
            SizedBox(
              height: 30,
            ),
            signupAndTACSection(),
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: kWhite2Color,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: ListView(
            children: [
              title(),
              inputSection(),
            ],
          ),
        ));
  }
}
