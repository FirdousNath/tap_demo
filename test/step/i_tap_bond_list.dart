import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: I tap {0} bond list
Future<void> iTapBondList(WidgetTester tester) async {
  final finder = find.byType(GestureDetector).first;
  await tester.tap(finder);
  await tester.pump();
}
