import 'package:flutter/material.dart';
import 'package:tap_demo/app/routes.dart';
import 'package:tap_demo/features/bonds_listing/domain/models/bond_model.dart';
import 'package:tap_demo/features/bonds_listing/presentation/widgets/bonds_list_tile.dart';

class BondsListView extends StatelessWidget {
  const BondsListView({this.bonds = const [], super.key});
  final List<BondModel> bonds;
  @override
  Widget build(BuildContext context) {
    if (bonds.isEmpty) {
      return const Center(child: Text('No bonds found'));
    }
    return ListView.builder(
      shrinkWrap: true,
      itemCount: bonds.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          child: BondsListTile(bond: bonds[index]),
          onTap:
              () => Navigator.of(context).pushNamed(
                AppRoutes.bondDetails,
                arguments: bonds[index].bondId,
              ),
        );
      },
    );
  }
}
