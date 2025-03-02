import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tap_demo/features/bond_details/domain/models/bond_details_model.dart';
part 'bond_details_state.freezed.dart';

@freezed
abstract class BondDetailsState with _$BondDetailsState {
  const factory BondDetailsState.initial({
    @Default(false) isLoading,
    BondDetailsModel? bondDetails,
    @Default(false) showRevenueChart,
  }) = _InitialBondDetailsState;
}
