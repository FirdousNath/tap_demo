import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_demo/features/bond_details/domain/repository/bonds_details_repo.dart';
import 'package:tap_demo/features/bond_details/presentation/bloc/bond_details_state.dart';

@injectable
class BondDetailsCubit extends Cubit<BondDetailsState> {
  BondDetailsCubit(this._repo) : super(BondDetailsState.initial());

  final BondsDetailsRepo _repo;

  void fetchBondDetails(String id) {
    emit(state.copyWith(isLoading: true));
    _repo.getBondsDetails(id).then((bond) {
      emit(state.copyWith(isLoading: false, bondDetails: bond));
    });
  }

  void showRevenueChart(bool showRevenueChart) {
    emit(state.copyWith(showRevenueChart: showRevenueChart));
  }
}
