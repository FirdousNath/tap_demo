// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bond_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BondModel _$BondModelFromJson(Map<String, dynamic> json) => _BondModel(
  bondId: json['bondId'] as String,
  rating: json['rating'] as String,
  companyName: json['companyName'] as String,
  identifier: json['identifier'] as String,
);

Map<String, dynamic> _$BondModelToJson(_BondModel instance) =>
    <String, dynamic>{
      'bondId': instance.bondId,
      'rating': instance.rating,
      'companyName': instance.companyName,
      'identifier': instance.identifier,
    };
