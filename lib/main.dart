import 'package:flutter/material.dart';
import 'package:tap_demo/app/injection.dart';
import 'package:tap_demo/app/routes.dart';
import 'package:tap_demo/features/bond_details/presentation/bonds_details_screen.dart';
import 'package:tap_demo/features/bonds_listing/presentation/bonds_listing_screen.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Inter'),
      routes: {
        AppRoutes.home: (context) => BondsListingScreen(),
        AppRoutes.bondDetails: (context) => BondsDetailsScreen(),
      },
    );
  }
}
