// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BondDetailsModel {

 String get bondId; String get description; String get isinNo; String get rating; String get companyName; String get identifier; IssuerModel get issuer; List<String> get pros; List<String> get cons;
/// Create a copy of BondDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BondDetailsModelCopyWith<BondDetailsModel> get copyWith => _$BondDetailsModelCopyWithImpl<BondDetailsModel>(this as BondDetailsModel, _$identity);

  /// Serializes this BondDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BondDetailsModel&&(identical(other.bondId, bondId) || other.bondId == bondId)&&(identical(other.description, description) || other.description == description)&&(identical(other.isinNo, isinNo) || other.isinNo == isinNo)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.issuer, issuer) || other.issuer == issuer)&&const DeepCollectionEquality().equals(other.pros, pros)&&const DeepCollectionEquality().equals(other.cons, cons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bondId,description,isinNo,rating,companyName,identifier,issuer,const DeepCollectionEquality().hash(pros),const DeepCollectionEquality().hash(cons));

@override
String toString() {
  return 'BondDetailsModel(bondId: $bondId, description: $description, isinNo: $isinNo, rating: $rating, companyName: $companyName, identifier: $identifier, issuer: $issuer, pros: $pros, cons: $cons)';
}


}

/// @nodoc
abstract mixin class $BondDetailsModelCopyWith<$Res>  {
  factory $BondDetailsModelCopyWith(BondDetailsModel value, $Res Function(BondDetailsModel) _then) = _$BondDetailsModelCopyWithImpl;
@useResult
$Res call({
 String bondId, String description, String isinNo, String rating, String companyName, String identifier, IssuerModel issuer, List<String> pros, List<String> cons
});


$IssuerModelCopyWith<$Res> get issuer;

}
/// @nodoc
class _$BondDetailsModelCopyWithImpl<$Res>
    implements $BondDetailsModelCopyWith<$Res> {
  _$BondDetailsModelCopyWithImpl(this._self, this._then);

  final BondDetailsModel _self;
  final $Res Function(BondDetailsModel) _then;

/// Create a copy of BondDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bondId = null,Object? description = null,Object? isinNo = null,Object? rating = null,Object? companyName = null,Object? identifier = null,Object? issuer = null,Object? pros = null,Object? cons = null,}) {
  return _then(_self.copyWith(
bondId: null == bondId ? _self.bondId : bondId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isinNo: null == isinNo ? _self.isinNo : isinNo // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String,issuer: null == issuer ? _self.issuer : issuer // ignore: cast_nullable_to_non_nullable
as IssuerModel,pros: null == pros ? _self.pros : pros // ignore: cast_nullable_to_non_nullable
as List<String>,cons: null == cons ? _self.cons : cons // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of BondDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IssuerModelCopyWith<$Res> get issuer {
  
  return $IssuerModelCopyWith<$Res>(_self.issuer, (value) {
    return _then(_self.copyWith(issuer: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _BondDetailsModel implements BondDetailsModel {
  const _BondDetailsModel({required this.bondId, required this.description, required this.isinNo, required this.rating, required this.companyName, required this.identifier, required this.issuer, final  List<String> pros = const [], final  List<String> cons = const []}): _pros = pros,_cons = cons;
  factory _BondDetailsModel.fromJson(Map<String, dynamic> json) => _$BondDetailsModelFromJson(json);

@override final  String bondId;
@override final  String description;
@override final  String isinNo;
@override final  String rating;
@override final  String companyName;
@override final  String identifier;
@override final  IssuerModel issuer;
 final  List<String> _pros;
@override@JsonKey() List<String> get pros {
  if (_pros is EqualUnmodifiableListView) return _pros;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pros);
}

 final  List<String> _cons;
@override@JsonKey() List<String> get cons {
  if (_cons is EqualUnmodifiableListView) return _cons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cons);
}


/// Create a copy of BondDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BondDetailsModelCopyWith<_BondDetailsModel> get copyWith => __$BondDetailsModelCopyWithImpl<_BondDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BondDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BondDetailsModel&&(identical(other.bondId, bondId) || other.bondId == bondId)&&(identical(other.description, description) || other.description == description)&&(identical(other.isinNo, isinNo) || other.isinNo == isinNo)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.issuer, issuer) || other.issuer == issuer)&&const DeepCollectionEquality().equals(other._pros, _pros)&&const DeepCollectionEquality().equals(other._cons, _cons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bondId,description,isinNo,rating,companyName,identifier,issuer,const DeepCollectionEquality().hash(_pros),const DeepCollectionEquality().hash(_cons));

@override
String toString() {
  return 'BondDetailsModel(bondId: $bondId, description: $description, isinNo: $isinNo, rating: $rating, companyName: $companyName, identifier: $identifier, issuer: $issuer, pros: $pros, cons: $cons)';
}


}

/// @nodoc
abstract mixin class _$BondDetailsModelCopyWith<$Res> implements $BondDetailsModelCopyWith<$Res> {
  factory _$BondDetailsModelCopyWith(_BondDetailsModel value, $Res Function(_BondDetailsModel) _then) = __$BondDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 String bondId, String description, String isinNo, String rating, String companyName, String identifier, IssuerModel issuer, List<String> pros, List<String> cons
});


@override $IssuerModelCopyWith<$Res> get issuer;

}
/// @nodoc
class __$BondDetailsModelCopyWithImpl<$Res>
    implements _$BondDetailsModelCopyWith<$Res> {
  __$BondDetailsModelCopyWithImpl(this._self, this._then);

  final _BondDetailsModel _self;
  final $Res Function(_BondDetailsModel) _then;

/// Create a copy of BondDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bondId = null,Object? description = null,Object? isinNo = null,Object? rating = null,Object? companyName = null,Object? identifier = null,Object? issuer = null,Object? pros = null,Object? cons = null,}) {
  return _then(_BondDetailsModel(
bondId: null == bondId ? _self.bondId : bondId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isinNo: null == isinNo ? _self.isinNo : isinNo // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String,issuer: null == issuer ? _self.issuer : issuer // ignore: cast_nullable_to_non_nullable
as IssuerModel,pros: null == pros ? _self._pros : pros // ignore: cast_nullable_to_non_nullable
as List<String>,cons: null == cons ? _self._cons : cons // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of BondDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IssuerModelCopyWith<$Res> get issuer {
  
  return $IssuerModelCopyWith<$Res>(_self.issuer, (value) {
    return _then(_self.copyWith(issuer: value));
  });
}
}


/// @nodoc
mixin _$IssuerModel {

 String get name; String get type; String get sector; String get industry; String get nature; String get cin; String get manager; String get registrar; String get trustee;
/// Create a copy of IssuerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IssuerModelCopyWith<IssuerModel> get copyWith => _$IssuerModelCopyWithImpl<IssuerModel>(this as IssuerModel, _$identity);

  /// Serializes this IssuerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IssuerModel&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.sector, sector) || other.sector == sector)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.nature, nature) || other.nature == nature)&&(identical(other.cin, cin) || other.cin == cin)&&(identical(other.manager, manager) || other.manager == manager)&&(identical(other.registrar, registrar) || other.registrar == registrar)&&(identical(other.trustee, trustee) || other.trustee == trustee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,sector,industry,nature,cin,manager,registrar,trustee);

@override
String toString() {
  return 'IssuerModel(name: $name, type: $type, sector: $sector, industry: $industry, nature: $nature, cin: $cin, manager: $manager, registrar: $registrar, trustee: $trustee)';
}


}

/// @nodoc
abstract mixin class $IssuerModelCopyWith<$Res>  {
  factory $IssuerModelCopyWith(IssuerModel value, $Res Function(IssuerModel) _then) = _$IssuerModelCopyWithImpl;
@useResult
$Res call({
 String name, String type, String sector, String industry, String nature, String cin, String manager, String registrar, String trustee
});




}
/// @nodoc
class _$IssuerModelCopyWithImpl<$Res>
    implements $IssuerModelCopyWith<$Res> {
  _$IssuerModelCopyWithImpl(this._self, this._then);

  final IssuerModel _self;
  final $Res Function(IssuerModel) _then;

/// Create a copy of IssuerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? type = null,Object? sector = null,Object? industry = null,Object? nature = null,Object? cin = null,Object? manager = null,Object? registrar = null,Object? trustee = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,sector: null == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as String,industry: null == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String,nature: null == nature ? _self.nature : nature // ignore: cast_nullable_to_non_nullable
as String,cin: null == cin ? _self.cin : cin // ignore: cast_nullable_to_non_nullable
as String,manager: null == manager ? _self.manager : manager // ignore: cast_nullable_to_non_nullable
as String,registrar: null == registrar ? _self.registrar : registrar // ignore: cast_nullable_to_non_nullable
as String,trustee: null == trustee ? _self.trustee : trustee // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _IssuerModel implements IssuerModel {
  const _IssuerModel({required this.name, required this.type, required this.sector, required this.industry, required this.nature, required this.cin, required this.manager, required this.registrar, required this.trustee});
  factory _IssuerModel.fromJson(Map<String, dynamic> json) => _$IssuerModelFromJson(json);

@override final  String name;
@override final  String type;
@override final  String sector;
@override final  String industry;
@override final  String nature;
@override final  String cin;
@override final  String manager;
@override final  String registrar;
@override final  String trustee;

/// Create a copy of IssuerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IssuerModelCopyWith<_IssuerModel> get copyWith => __$IssuerModelCopyWithImpl<_IssuerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IssuerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IssuerModel&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.sector, sector) || other.sector == sector)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.nature, nature) || other.nature == nature)&&(identical(other.cin, cin) || other.cin == cin)&&(identical(other.manager, manager) || other.manager == manager)&&(identical(other.registrar, registrar) || other.registrar == registrar)&&(identical(other.trustee, trustee) || other.trustee == trustee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,sector,industry,nature,cin,manager,registrar,trustee);

@override
String toString() {
  return 'IssuerModel(name: $name, type: $type, sector: $sector, industry: $industry, nature: $nature, cin: $cin, manager: $manager, registrar: $registrar, trustee: $trustee)';
}


}

/// @nodoc
abstract mixin class _$IssuerModelCopyWith<$Res> implements $IssuerModelCopyWith<$Res> {
  factory _$IssuerModelCopyWith(_IssuerModel value, $Res Function(_IssuerModel) _then) = __$IssuerModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String type, String sector, String industry, String nature, String cin, String manager, String registrar, String trustee
});




}
/// @nodoc
class __$IssuerModelCopyWithImpl<$Res>
    implements _$IssuerModelCopyWith<$Res> {
  __$IssuerModelCopyWithImpl(this._self, this._then);

  final _IssuerModel _self;
  final $Res Function(_IssuerModel) _then;

/// Create a copy of IssuerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = null,Object? sector = null,Object? industry = null,Object? nature = null,Object? cin = null,Object? manager = null,Object? registrar = null,Object? trustee = null,}) {
  return _then(_IssuerModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,sector: null == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as String,industry: null == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String,nature: null == nature ? _self.nature : nature // ignore: cast_nullable_to_non_nullable
as String,cin: null == cin ? _self.cin : cin // ignore: cast_nullable_to_non_nullable
as String,manager: null == manager ? _self.manager : manager // ignore: cast_nullable_to_non_nullable
as String,registrar: null == registrar ? _self.registrar : registrar // ignore: cast_nullable_to_non_nullable
as String,trustee: null == trustee ? _self.trustee : trustee // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
