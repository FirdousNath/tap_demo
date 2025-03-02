import 'package:flutter_test/flutter_test.dart';
import 'package:tap_demo/app/injection.dart';
import 'package:tap_demo/main.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  configureDependencies();
  await tester.pumpWidget(MyApp());
}
