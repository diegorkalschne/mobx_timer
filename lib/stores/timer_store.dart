// ignore_for_file: library_private_types_in_public_api, prefer_final_fields

import 'package:mobx/mobx.dart';

part 'timer_store.g.dart';

class TimerStore = _TimerStore with _$TimerStore;

abstract class _TimerStore with Store {
  @observable
  DateTime _timer = DateTime(2022);

  @observable
  bool _timerActive = false;
  
  @computed
  DateTime get timer => _timer;

  @computed
  bool get timerActive => _timerActive;

  @action
  void addSecond() {
    _timer = _timer.add(const Duration(seconds: 1));
  }

  @action
  void setTimerActive({required bool value}) {
    _timerActive = value;
  }

  @action
  void resetTimer() {
    _timer = DateTime(2022);
    _timerActive = false;
  }
}
