// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bond_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BondDetailsModel _$BondDetailsModelFromJson(Map<String, dynamic> json) =>
    _BondDetailsModel(
      bondId: json['bondId'] as String,
      description: json['description'] as String,
      isinNo: json['isinNo'] as String,
      rating: json['rating'] as String,
      companyName: json['companyName'] as String,
      identifier: json['identifier'] as String,
      issuer: IssuerModel.fromJson(json['issuer'] as Map<String, dynamic>),
      pros:
          (json['pros'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      cons:
          (json['cons'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
    );

Map<String, dynamic> _$BondDetailsModelToJson(_BondDetailsModel instance) =>
    <String, dynamic>{
      'bondId': instance.bondId,
      'description': instance.description,
      'isinNo': instance.isinNo,
      'rating': instance.rating,
      'companyName': instance.companyName,
      'identifier': instance.identifier,
      'issuer': instance.issuer,
      'pros': instance.pros,
      'cons': instance.cons,
    };

_IssuerModel _$IssuerModelFromJson(Map<String, dynamic> json) => _IssuerModel(
  name: json['name'] as String,
  type: json['type'] as String,
  sector: json['sector'] as String,
  industry: json['industry'] as String,
  nature: json['nature'] as String,
  cin: json['cin'] as String,
  manager: json['manager'] as String,
  registrar: json['registrar'] as String,
  trustee: json['trustee'] as String,
);

Map<String, dynamic> _$IssuerModelToJson(_IssuerModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'sector': instance.sector,
      'industry': instance.industry,
      'nature': instance.nature,
      'cin': instance.cin,
      'manager': instance.manager,
      'registrar': instance.registrar,
      'trustee': instance.trustee,
    };
