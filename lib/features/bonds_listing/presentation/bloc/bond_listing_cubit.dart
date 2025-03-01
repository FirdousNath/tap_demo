import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_demo/features/bonds_listing/domain/repository/bonds_listing_repo.dart';
import 'package:tap_demo/features/bonds_listing/presentation/bloc/bond_listing_state.dart';

@injectable
class BondListingCubit extends Cubit<BondListingState> {
  BondListingCubit(this.repo) : super(BondListingState.initial());

  final BondsListingRepo repo;

  void fetchBonds() {
    emit(state.copyWith(isLoading: true));
    repo.getBondsList().then((bonds) {
      emit(state.copyWith(isLoading: false, bonds: bonds));
    });
  }

  void filterBonds(String query) {
    if (query.isEmpty) {
      fetchBonds();
      return;
    }
    emit(state.copyWith(isLoading: true));

    final filteredBonds =
        state.bonds.where((bond) {
          return bond.bondId.toLowerCase().contains(query.toLowerCase()) ||
              bond.identifier.toLowerCase().contains(query.toLowerCase()) ||
              bond.companyName.toLowerCase().contains(query.toLowerCase()) ||
              bond.rating.toLowerCase().contains(query.toLowerCase());
        }).toList();

    emit(state.copyWith(isLoading: false, bonds: filteredBonds));
  }
}
