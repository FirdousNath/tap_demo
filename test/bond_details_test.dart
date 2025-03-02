// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/clean_up.dart';
import './step/the_app_is_running.dart';
import './step/i_wait.dart';
import './step/i_tap_bond_list.dart';
import './step/i_see_bond_details_page.dart';
import './step/i_tap_text.dart';
import './step/i_see_text.dart';

void main() {
  group('''Bond Details Screen''', () {
    Future<void> bddTearDown(WidgetTester tester) async {
      await cleanUp(tester);
    }

    testWidgets('''Users should see bond Details''', (tester) async {
      try {
        await theAppIsRunning(tester);
        await iWait(tester);
        await iTapBondList(tester);
        await iWait(tester);
        await iSeeBondDetailsPage(tester);
      } finally {
        await bddTearDown(tester);
      }
    });
    testWidgets('''Users should see bond pros & cons''', (tester) async {
      try {
        await theAppIsRunning(tester);
        await iWait(tester);
        await iTapBondList(tester);
        await iWait(tester);
        await iTapText(tester, 'Pros & Cons');
        await iSeeText(tester, 'Liquidity: Adequate');
        await iSeeText(tester, 'Moderate profitability metrics');
      } finally {
        await bddTearDown(tester);
      }
    });
  });
}
