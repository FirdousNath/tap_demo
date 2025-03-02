import 'package:flutter_test/flutter_test.dart';

/// Usage: I wait for {1} second
Future<void> iWaitForSecond(WidgetTester tester, int seconds) async {
  Future.delayed(
    Duration(seconds: seconds),
    () async => await tester.pumpAndSettle(),
  );
}
