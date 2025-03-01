import 'package:injectable/injectable.dart';
import 'package:tap_demo/features/bonds_listing/domain/models/bond_model.dart';
import 'package:tap_demo/utils/constants.dart';

@injectable
class BondsListingRepo {
  Future<List<BondModel>> getBondsList() {
    return Future.delayed(Duration(seconds: 1), () {
      return List.generate(
        bonds.length,
        (index) => BondModel.fromJson(bonds[index]),
      );
    });
  }
}
