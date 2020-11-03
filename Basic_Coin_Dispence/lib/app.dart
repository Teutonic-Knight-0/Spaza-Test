import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter/counter.dart';
import 'screens/loginScreen.dart';
import 'screens/submitScreen.dart';
import 'screens/resultScreen.dart';

import 'package:flutter_counter/modules/denomination_cubit.dart';
import 'package:flutter_counter/modules/denominations.dart';

/// {@template counter_app}
/// A [MaterialApp] which sets the `home` to [CounterPage].
/// {@endtemplate}
class CounterApp extends MaterialApp {
  /// {@macro counter_app}
  const CounterApp({Key key}) : super(key: key, home: const CounterPage());
}

class BasicCoinDispenceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DenominationCubit(Denominations()),
      child: MaterialApp(
        initialRoute: LoginScreen.id,
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          SubmitScreen.id: (context) => SubmitScreen(),
          ResultScreen.id: (context) => ResultScreen()
        },
      ),
    );
  }
}
