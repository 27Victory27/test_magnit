// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';

import 'package:test_magnit/main.dart';

void main() {
  int time1 = 1686219244000;
  int time2 = 1686222844000;
  final time = DateTime.fromMillisecondsSinceEpoch(time1);
  print(time);
  TestConstructor("1");
}

class TestConstructor {
  String per ="";

  TestConstructor(String myPer){per = myPer;}

  String testFunc() {
    return per;
  }
}

class Test {
  void testFunc(Function(int, String) test) {
    test(1, "victory");
  }
}
