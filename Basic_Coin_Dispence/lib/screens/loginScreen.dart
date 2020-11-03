import 'package:flutter/material.dart';
import 'package:flutter_counter/screens/submitScreen.dart';
import 'package:flutter_counter/constants.dart';
import 'package:flutter_counter/widgets/reusableButton.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email;
  String _pass;
  void _navigateToSubmit() {
    // Fetch user credentials
    if (true /* Check if credentials match*/) {
      Navigator.pushNamed(context, SubmitScreen.id);
    } else {
      // Handle failed log in attempt
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kLoginTxtFieldPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                style: kLoginTxtFieldStyle,
                onChanged: (value) {
                  _email = value;
                },
                decoration: kLoginTxtFieldDecoration.copyWith(
                    hintText: 'Enter your email')),
            kTxtFieldSpacer,
            TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                style: kLoginTxtFieldStyle,
                onChanged: (value) {
                  _pass = value;
                },
                decoration: kLoginTxtFieldDecoration.copyWith(
                    hintText: 'Enter your password')),
            kLoginBtnSpacer,
            Padding(
              padding: kLoginBtnPadding,
              child: ReusableButton(
                btnColor: kLoginBtnColor,
                btnBorderRadius: kLoginBtnBorderRadius,
                btnElevation: kBtnElevation,
                btnText: kLoginBtnTxt,
                btnPressed: _navigateToSubmit,
              ),
            )
          ],
        ),
      ),
    );
  }
}
