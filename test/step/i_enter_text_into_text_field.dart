import 'package:bdd_widget_test/step/i_enter_into_input_field.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: I enter {'7172'} text into {0} text field
Future<void> iEnterTextIntoTextField(
  WidgetTester tester,
  String text,
  int index,
) async {
  await iEnterIntoInputField(tester, text, index);
}
