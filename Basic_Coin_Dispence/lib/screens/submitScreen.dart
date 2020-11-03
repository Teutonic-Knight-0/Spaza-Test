import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/constants.dart';
import 'package:flutter_counter/modules/denomination_cubit.dart';
import 'package:flutter_counter/screens/resultScreen.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter_counter/widgets/reusableButton.dart';

class SubmitScreen extends StatefulWidget {
  static const id = 'submit';
  @override
  _SubmitScreenState createState() => _SubmitScreenState();
}

class _SubmitScreenState extends State<SubmitScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<DenominationCubit>(context).resetDenominations();
  }

  String _amountDue;
  void _navigateToResult() {
    BlocProvider.of<DenominationCubit>(context)
        .getDenominations(mmtc.numberValue);
    Navigator.popAndPushNamed(context, ResultScreen.id);
  }

  var mmtc = MoneyMaskedTextController(
      decimalSeparator: '.', thousandSeparator: ',', leftSymbol: 'R.');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: kTxtFieldPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Title(
              color: Colors.black,
              child: Text(
                'Amount Due: $_amountDue',
                style: kTxtStyle,
              ),
            ),
            kLoginBtnSpacer,
            Text('Capture rand note denomination', style: kTxtStyle),
            kTxtFieldSpacer,
            TextField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              textAlign: TextAlign.start,
              style: kLoginTxtFieldStyle,
              onChanged: (string) {
                setState(() {
                  _amountDue = mmtc.text;
                });
              },
              controller: mmtc,
              decoration: kTxtFieldDecoration,
            ),
            kLoginBtnSpacer,
            Positioned(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 0,
              right: 0,
              child: ReusableButton(
                  btnColor: kBtnColor,
                  btnElevation: kBtnElevation,
                  btnText: kSubmitBtnTxt,
                  btnPressed: _navigateToResult),
            )
          ],
        ),
      ),
    );
  }
}
