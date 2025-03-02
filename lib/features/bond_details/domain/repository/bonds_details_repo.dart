import 'package:injectable/injectable.dart';
import 'package:tap_demo/features/bond_details/domain/models/bond_details_model.dart';
import 'package:tap_demo/utils/constants.dart';

@injectable
class BondsDetailsRepo {
  Future<BondDetailsModel> getBondsDetails(String id) async {
    final bond = bonds.where((bond) => bond['bondId'] == id).firstOrNull;
    if (bond != null) {
      return BondDetailsModel.fromJson(bondJson);
    } else {
      throw Exception('Bond not found');
    }
  }
}
