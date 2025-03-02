import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_demo/features/bonds_listing/domain/repository/bonds_listing_repo.dart';
import 'package:tap_demo/features/bonds_listing/presentation/bloc/bond_listing_state.dart';

@injectable
class BondListingCubit extends Cubit<BondListingState> {
  BondListingCubit(this._repo) : super(BondListingState.initial());

  final BondsListingRepo _repo;

  void fetchBonds() {
    emit(state.copyWith(isLoading: true));
    _repo.getBondsList().then((bonds) {
      emit(state.copyWith(isLoading: false, bonds: bonds));
    });
  }

  void filterBonds(String query) {
    emit(state.copyWith(searchQuery: query));
    if (query.trim().isEmpty) {
      fetchBonds();
      return;
    }

    final List<String> words = query.toLowerCase().split(" ").toList();

    final filteredBonds =
        state.bonds.where((bond) {
          final bondId = bond.bondId.toLowerCase();
          final identifier = bond.identifier.toLowerCase();
          final companyName = bond.companyName.toLowerCase();
          final rating = bond.rating.toLowerCase();

          // Check if any word in the search query matches any bond field
          return words.any(
            (word) =>
                bondId.contains(word) ||
                identifier.contains(word) ||
                companyName.contains(word) ||
                rating.contains(word),
          );
        }).toList();

    emit(state.copyWith(isLoading: false, bonds: filteredBonds));
  }
}
