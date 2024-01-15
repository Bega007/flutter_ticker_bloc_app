import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ticker/ticker.dart';
import 'package:flutter_ticker/timer/timer.dart';
import 'package:flutter_ticker/timer/view/actions_widget.dart';
import 'package:flutter_ticker/timer/view/background_widget.dart';
import 'package:flutter_ticker/timer/view/timer_text.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({Key ? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TimerBloc(ticker: const Ticker()),
      child: const TimerView(),
    );
  }
}

class TimerView extends StatelessWidget {
  const TimerView({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Timer'),
      ),
      body: const Stack(
        children: [
         BackgoundWidget(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100.0),
                child: Center(
                  child: TimerText(),
                ),
              ),
              ActionsWidget(),
            ],
          ),
        ],
      ),
    );
  }
}

