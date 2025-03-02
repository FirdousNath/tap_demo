import 'package:flutter_test/flutter_test.dart';

import 'i_see_text.dart';

/// Usage: I see bond details page
Future<void> iSeeBondDetailsPage(WidgetTester tester) async {
  iSeeText(tester, 'Hella Infra Market Private Limited');
  iSeeText(
    tester,
    "Hella Infra is a construction materials platform that enhances operational efficiency by integrating technology into the construction industry's value chain.",
  );

  iSeeText(tester, 'ISIN: INE06E507157');
  iSeeText(tester, 'ACTIVE');
  iSeeText(tester, 'TRUE CREDITS PRIVATE LIMITED');
  iSeeText(tester, 'Non PSU');
  iSeeText(tester, 'Financial Services');
  iSeeText(tester, 'Finance');
  iSeeText(tester, 'U45200MH2015PTC266682');
  iSeeText(tester, 'KFIN TECHNOLOGIES PRIVATE LIMITED');
  iSeeText(tester, 'IDBI Trusteeship Services Limited');
}
