import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  Color btnColor;
  BorderRadius btnBorderRadius;
  double btnElevation;
  Text btnText;
  void Function() btnPressed;

  ReusableButton(
      {this.btnColor,
      this.btnBorderRadius,
      this.btnElevation,
      this.btnText,
      this.btnPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: btnColor,
      borderRadius: btnBorderRadius,
      elevation: btnElevation,
      child: MaterialButton(
        onPressed: btnPressed,
        child: btnText,
      ),
    );
  }
}
