// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TimerStore on _TimerStore, Store {
  Computed<DateTime>? _$timerComputed;

  @override
  DateTime get timer => (_$timerComputed ??=
          Computed<DateTime>(() => super.timer, name: '_TimerStore.timer'))
      .value;
  Computed<bool>? _$timerActiveComputed;

  @override
  bool get timerActive =>
      (_$timerActiveComputed ??= Computed<bool>(() => super.timerActive,
              name: '_TimerStore.timerActive'))
          .value;

  late final _$_timerAtom = Atom(name: '_TimerStore._timer', context: context);

  @override
  DateTime get _timer {
    _$_timerAtom.reportRead();
    return super._timer;
  }

  @override
  set _timer(DateTime value) {
    _$_timerAtom.reportWrite(value, super._timer, () {
      super._timer = value;
    });
  }

  late final _$_timerActiveAtom =
      Atom(name: '_TimerStore._timerActive', context: context);

  @override
  bool get _timerActive {
    _$_timerActiveAtom.reportRead();
    return super._timerActive;
  }

  @override
  set _timerActive(bool value) {
    _$_timerActiveAtom.reportWrite(value, super._timerActive, () {
      super._timerActive = value;
    });
  }

  late final _$_TimerStoreActionController =
      ActionController(name: '_TimerStore', context: context);

  @override
  void addSecond() {
    final _$actionInfo = _$_TimerStoreActionController.startAction(
        name: '_TimerStore.addSecond');
    try {
      return super.addSecond();
    } finally {
      _$_TimerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTimerActive({required bool value}) {
    final _$actionInfo = _$_TimerStoreActionController.startAction(
        name: '_TimerStore.setTimerActive');
    try {
      return super.setTimerActive(value: value);
    } finally {
      _$_TimerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetTimer() {
    final _$actionInfo = _$_TimerStoreActionController.startAction(
        name: '_TimerStore.resetTimer');
    try {
      return super.resetTimer();
    } finally {
      _$_TimerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
timer: ${timer},
timerActive: ${timerActive}
    ''';
  }
}
