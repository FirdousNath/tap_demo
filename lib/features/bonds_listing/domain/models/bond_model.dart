import 'package:freezed_annotation/freezed_annotation.dart';

part 'bond_model.freezed.dart';
part 'bond_model.g.dart';

@freezed
abstract class BondModel with _$BondModel {
  const factory BondModel({
    required String bondId,
    required String rating,
    required String companyName,
    required String identifier,
  }) = _BondModel;

  factory BondModel.fromJson(Map<String, dynamic> json) =>
      _$BondModelFromJson(json);
}
