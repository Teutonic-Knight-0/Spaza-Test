import 'package:flutter/material.dart';

// Login TextField constants
const kLoginTxtFieldDecoration = InputDecoration(
  hintStyle: TextStyle(color: Colors.grey),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
const kLoginTxtFieldStyle = TextStyle(color: Colors.black);
const kLoginTxtFieldPadding = EdgeInsets.symmetric(horizontal: 24.0);

const kTxtFieldSpacer = SizedBox(
  height: 8.0,
);

// Login Button Constants
const kLoginBtnSpacer = SizedBox(
  height: 24.0,
);
const kLoginBtnPadding = EdgeInsets.symmetric(horizontal: 16.0);
const kLoginBtnTxt = Text('Log In');
const kLoginBtnColor = Colors.lightBlueAccent;
const kLoginBtnBorderRadius = BorderRadius.all(Radius.circular(30.0));

// Submit button Constants

const kSubmitBtnTxt = Text('Submit');

// Reset Button Constants

const kResetBtnTxt = Text('Reset');
const kResetBtnColor = Colors.redAccent;

// Reusable Button Constants
const kBtnColor = Colors.blueGrey;
const kBtnElevation = 5.0;

// Submit Text field decoration

const kTxtFieldDecoration = InputDecoration(
  hintStyle: TextStyle(color: Colors.grey),
  hintText: 'R.',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 1.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 2.0),
  ),
);

const kTxtFieldPadding = EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0);

const kTxtStyle = TextStyle(fontSize: 18.0);
