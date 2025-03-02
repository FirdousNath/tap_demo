import 'package:flutter_test/flutter_test.dart';
import 'package:tap_demo/app/injection.dart';

/// Usage: clean up
Future<void> cleanUp(WidgetTester tester) async {
  await getIt.reset();
}
