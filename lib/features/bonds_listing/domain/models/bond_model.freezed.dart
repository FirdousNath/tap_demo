// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BondModel {

 String get bondId; String get rating; String get companyName; String get identifier;
/// Create a copy of BondModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BondModelCopyWith<BondModel> get copyWith => _$BondModelCopyWithImpl<BondModel>(this as BondModel, _$identity);

  /// Serializes this BondModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BondModel&&(identical(other.bondId, bondId) || other.bondId == bondId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.identifier, identifier) || other.identifier == identifier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bondId,rating,companyName,identifier);

@override
String toString() {
  return 'BondModel(bondId: $bondId, rating: $rating, companyName: $companyName, identifier: $identifier)';
}


}

/// @nodoc
abstract mixin class $BondModelCopyWith<$Res>  {
  factory $BondModelCopyWith(BondModel value, $Res Function(BondModel) _then) = _$BondModelCopyWithImpl;
@useResult
$Res call({
 String bondId, String rating, String companyName, String identifier
});




}
/// @nodoc
class _$BondModelCopyWithImpl<$Res>
    implements $BondModelCopyWith<$Res> {
  _$BondModelCopyWithImpl(this._self, this._then);

  final BondModel _self;
  final $Res Function(BondModel) _then;

/// Create a copy of BondModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bondId = null,Object? rating = null,Object? companyName = null,Object? identifier = null,}) {
  return _then(_self.copyWith(
bondId: null == bondId ? _self.bondId : bondId // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _BondModel implements BondModel {
  const _BondModel({required this.bondId, required this.rating, required this.companyName, required this.identifier});
  factory _BondModel.fromJson(Map<String, dynamic> json) => _$BondModelFromJson(json);

@override final  String bondId;
@override final  String rating;
@override final  String companyName;
@override final  String identifier;

/// Create a copy of BondModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BondModelCopyWith<_BondModel> get copyWith => __$BondModelCopyWithImpl<_BondModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BondModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BondModel&&(identical(other.bondId, bondId) || other.bondId == bondId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.identifier, identifier) || other.identifier == identifier));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,bondId,rating,companyName,identifier);

@override
String toString() {
  return 'BondModel(bondId: $bondId, rating: $rating, companyName: $companyName, identifier: $identifier)';
}


}

/// @nodoc
abstract mixin class _$BondModelCopyWith<$Res> implements $BondModelCopyWith<$Res> {
  factory _$BondModelCopyWith(_BondModel value, $Res Function(_BondModel) _then) = __$BondModelCopyWithImpl;
@override @useResult
$Res call({
 String bondId, String rating, String companyName, String identifier
});




}
/// @nodoc
class __$BondModelCopyWithImpl<$Res>
    implements _$BondModelCopyWith<$Res> {
  __$BondModelCopyWithImpl(this._self, this._then);

  final _BondModel _self;
  final $Res Function(_BondModel) _then;

/// Create a copy of BondModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bondId = null,Object? rating = null,Object? companyName = null,Object? identifier = null,}) {
  return _then(_BondModel(
bondId: null == bondId ? _self.bondId : bondId // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
