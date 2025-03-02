import 'package:freezed_annotation/freezed_annotation.dart';

part 'bond_details_model.freezed.dart';
part 'bond_details_model.g.dart';

@freezed
abstract class BondDetailsModel with _$BondDetailsModel {
  const factory BondDetailsModel({
    required String bondId,
    required String description,
    required String isinNo,
    required String rating,
    required String companyName,
    required String identifier,
    required IssuerModel issuer,
    @Default([]) List<String> pros,
    @Default([]) List<String> cons,
  }) = _BondDetailsModel;

  factory BondDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$BondDetailsModelFromJson(json);
}

@freezed
abstract class IssuerModel with _$IssuerModel {
  const factory IssuerModel({
    required String name,
    required String type,
    required String sector,
    required String industry,
    required String nature,
    required String cin,
    required String manager,
    required String registrar,
    required String trustee,
  }) = _IssuerModel;

  factory IssuerModel.fromJson(Map<String, dynamic> json) =>
      _$IssuerModelFromJson(json);
}
