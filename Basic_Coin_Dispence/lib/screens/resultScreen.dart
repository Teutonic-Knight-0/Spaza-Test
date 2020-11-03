import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/constants.dart';
import 'package:flutter_counter/modules/denomination_cubit.dart';
import 'package:flutter_counter/screens/submitScreen.dart';
import 'package:flutter_counter/widgets/reusableButton.dart';

class ResultScreen extends StatefulWidget {
  static const id = 'result';
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  void _navigateToSubmit() {
    Navigator.popAndPushNamed(context, SubmitScreen.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: kTxtFieldPadding,
        child: BlocBuilder<DenominationCubit, DenominationState>(
          builder: (context, state) {
            if (state is DenominationsLoaded) {
              List<Text> denominationTxts = List<Text>();
              state.loadedDenominations.forEach((dmns) {
                denominationTxts.add(
                  Text(
                    dmns,
                    style: kTxtStyle,
                  ),
                );
              });
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Title(
                    color: Colors.black,
                    child: Text(
                      'Breakdown:',
                      style: kTxtStyle,
                    ),
                  ),
                  kLoginBtnSpacer,
                  Expanded(child: ListView(children: denominationTxts)),
                  kLoginBtnSpacer,
                  Positioned(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                    left: 0,
                    right: 0,
                    child: ReusableButton(
                        btnColor: kResetBtnColor,
                        btnElevation: kBtnElevation,
                        btnText: kResetBtnTxt,
                        btnPressed: _navigateToSubmit),
                  )
                ],
              );
            } else if (state is DenominationError) {
              return Title(
                  color: Colors.black,
                  child: Text(
                    'Invalid currency value inserted',
                    style: kTxtStyle,
                  ));
            }
            return Title(
                color: Colors.black,
                child: Text(
                  'Loading...',
                  style: kTxtStyle,
                ));
            ;
          },
        ),
      ),
    );
  }
}
