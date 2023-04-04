// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timerModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TimerModel on _TimerModelBase, Store {
  late final _$secAtom = Atom(name: '_TimerModelBase.sec', context: context);

  @override
  int get sec {
    _$secAtom.reportRead();
    return super.sec;
  }

  @override
  set sec(int value) {
    _$secAtom.reportWrite(value, super.sec, () {
      super.sec = value;
    });
  }

  late final _$minAtom = Atom(name: '_TimerModelBase.min', context: context);

  @override
  int get min {
    _$minAtom.reportRead();
    return super.min;
  }

  @override
  set min(int value) {
    _$minAtom.reportWrite(value, super.min, () {
      super.min = value;
    });
  }

  late final _$StatusAtom =
      Atom(name: '_TimerModelBase.Status', context: context);

  @override
  String get Status {
    _$StatusAtom.reportRead();
    return super.Status;
  }

  @override
  set Status(String value) {
    _$StatusAtom.reportWrite(value, super.Status, () {
      super.Status = value;
    });
  }

  late final _$counterAtom =
      Atom(name: '_TimerModelBase.counter', context: context);

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  @override
  String toString() {
    return '''
sec: ${sec},
min: ${min},
Status: ${Status},
counter: ${counter}
    ''';
  }
}
