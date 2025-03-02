import 'package:flutter_test/flutter_test.dart';
import 'package:tap_demo/features/bonds_listing/presentation/widgets/bonds_list_tile.dart';

/// Usage: I see bonds list
Future<void> iSeeBondsList(WidgetTester tester, int count) async {
  expect(find.byType(BondsListTile), findsNWidgets(count));
}
