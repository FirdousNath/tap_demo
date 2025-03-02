// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:tap_demo/features/bonds_listing/presentation/widgets/bonds_list.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/clean_up.dart';
import './step/the_app_is_running.dart';
import './step/i_see_widget.dart';
import './step/i_wait.dart';
import './step/i_see_text.dart';
import './step/i_dont_see_widget.dart';
import './step/i_enter_text_into_text_field.dart';
import './step/i_see_bonds_list.dart';
import './step/i_tap_bond_list.dart';

void main() {
  group('''Bond Listing Screen''', () {
    Future<void> bddTearDown(WidgetTester tester) async {
      await cleanUp(tester);
    }

    testWidgets('''Users should see list of Bonds''', (tester) async {
      try {
        await theAppIsRunning(tester);
        await iSeeWidget(tester, CircularProgressIndicator);
        await iWait(tester);
        await iSeeText(tester, 'Home');
        await iSeeText(tester, 'Search by Issuer Name or ISIN');
        await iSeeText(tester, 'SUGGESTED RESULTS');
        await iSeeWidget(tester, BondsListView);
        await iDontSeeWidget(tester, CircularProgressIndicator);
      } finally {
        await bddTearDown(tester);
      }
    });
    testWidgets('''Users should be able to search Bonds''', (tester) async {
      try {
        await theAppIsRunning(tester);
        await iSeeWidget(tester, CircularProgressIndicator);
        await iWait(tester);
        await iSeeWidget(tester, BondsListView);
        await iEnterTextIntoTextField(tester, '7172', 0);
        await iWait(tester);
        await iSeeBondsList(tester, 2);
        await iSeeText(tester, 'SEARCH RESULTS');
      } finally {
        await bddTearDown(tester);
      }
    });
    testWidgets(
        '''Users should No bonds found when search query doesnot match''',
        (tester) async {
      try {
        await theAppIsRunning(tester);
        await iSeeWidget(tester, CircularProgressIndicator);
        await iWait(tester);
        await iSeeWidget(tester, BondsListView);
        await iEnterTextIntoTextField(tester, '112', 0);
        await iWait(tester);
        await iSeeBondsList(tester, 0);
        await iSeeText(tester, 'No bonds found');
        await iSeeText(tester, 'SEARCH RESULTS');
      } finally {
        await bddTearDown(tester);
      }
    });
    testWidgets('''Users should be navigated to details page''',
        (tester) async {
      try {
        await theAppIsRunning(tester);
        await iSeeWidget(tester, CircularProgressIndicator);
        await iWait(tester);
        await iSeeWidget(tester, BondsListView);
        await iTapBondList(tester);
        await iWait(tester);
        await iSeeText(tester, 'ISIN: INE06E507157');
      } finally {
        await bddTearDown(tester);
      }
    });
  });
}
