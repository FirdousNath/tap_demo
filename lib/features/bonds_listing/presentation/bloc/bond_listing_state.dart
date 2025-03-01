import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tap_demo/features/bonds_listing/domain/models/bond_model.dart';

part 'bond_listing_state.freezed.dart';

@freezed
abstract class BondListingState with _$BondListingState {
  const factory BondListingState.initial({
    @Default([]) List<BondModel> bonds,
    @Default(false) bool isLoading,
    String? searchQuery,
  }) = _InitialBondListingState;
}
