import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_demo/app/injection.dart';
import 'package:tap_demo/design_system/atoms/colors.dart';
import 'package:tap_demo/design_system/atoms/radius.dart';
import 'package:tap_demo/design_system/atoms/sizes.dart';
import 'package:tap_demo/design_system/molecules/text/styles.dart';
import 'package:tap_demo/features/bonds_listing/presentation/bloc/bond_listing_cubit.dart';
import 'package:tap_demo/features/bonds_listing/presentation/bloc/bond_listing_state.dart';
import 'package:tap_demo/features/bonds_listing/presentation/widgets/bonds_list.dart';
import 'package:tap_demo/features/bonds_listing/presentation/widgets/search_bar.dart';

class BondsListingScreen extends StatelessWidget {
  BondsListingScreen({super.key});
  final cubit = getIt<BondListingCubit>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          title: Text('Home', style: AppTextStyles.titleBig),
          centerTitle: false,
          backgroundColor: bgColor,
        ),
        body: BlocProvider(
          create: (_) => cubit..fetchBonds(),
          child: BlocBuilder<BondListingCubit, BondListingState>(
            builder: (context, BondListingState state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppSearchBar(onChanged: (text) => cubit.filterBonds(text)),
                  const SizedBox(height: xlarge),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: medium),
                    child: Text(
                      'SUGGESTED RESULTS',
                      style: AppTextStyles.bodyBold,
                    ),
                  ),

                  const SizedBox(height: tiny),
                  Flexible(
                    child:
                        state.isLoading
                            ? const Center(child: CircularProgressIndicator())
                            : Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: medium,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: tinyBorderRadius,
                                border: Border.all(color: bgColor, width: 0.5),
                              ),
                              child: BondsListView(
                                bonds: state.bonds,
                                query: state.searchQuery ?? '',
                              ),
                            ),
                  ),
                  const SizedBox(height: medium),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
