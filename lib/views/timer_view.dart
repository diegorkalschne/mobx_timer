import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../stores/timer_store.dart';
import '../widgets/cs_button.dart';

class TimerView extends StatefulWidget {
  const TimerView({super.key});

  @override
  State<TimerView> createState() => _TimerViewState();
}

class _TimerViewState extends State<TimerView> {
  final _stateView = TimerStore();
  Timer? _timer;

  void _initTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _stateView.addSecond();
    });

    _stateView.setTimerActive(value: true);
  }

  void _resetTimer() {
    _timer!.cancel();

    _stateView.resetTimer();
  }

  String _formatTimerText() {
    String hour = _stateView.timer.hour.toString().padLeft(2, '0');
    String minute = _stateView.timer.minute.toString().padLeft(2, '0');
    String seconds = _stateView.timer.second.toString().padLeft(2, '0');

    return '$hour:$minute:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Observer(
              builder: (_) {
                return Text(
                  '${_formatTimerText()}',
                  style: TextStyle(
                    fontSize: 80,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: _stateView.timerActive
                            ? Colors.cyan[900]!
                            : Colors.blue[900]!,
                        blurRadius: 20,
                        offset: const Offset(3, 3),
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Observer(
                builder: (_) {
                  if (!_stateView.timerActive) {
                    return CsButton(
                      label: 'Play',
                      onPressed: _initTimer,
                      backgroundColor: Colors.blue[900],
                    );
                  }

                  return CsButton(
                    label: 'Reset',
                    onPressed: _resetTimer,
                    backgroundColor: Colors.cyan[900],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
