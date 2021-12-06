// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tutorial_firestore/api.dart';

import 'package:tutorial_firestore/main.dart';

void main() {
  test('post', () async {
    Api api = Api();
    api.User('', '');
    String token = await api.auth();
    //tokenが空でないことを確認
    expect(token, isNotEmpty);
  });
}
