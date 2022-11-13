import 'package:flutter/material.dart';

import 'views/timer_view.dart';

void main() => runApp(const MobxTimer());

class MobxTimer extends StatelessWidget {
  const MobxTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobx Timer',
      theme: ThemeData.dark(),
      home: const TimerView(),
    );
  }
}
