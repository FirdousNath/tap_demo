// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_listing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BondListingState {

 List<BondModel> get bonds; bool get isLoading; String? get searchQuery;
/// Create a copy of BondListingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BondListingStateCopyWith<BondListingState> get copyWith => _$BondListingStateCopyWithImpl<BondListingState>(this as BondListingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BondListingState&&const DeepCollectionEquality().equals(other.bonds, bonds)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bonds),isLoading,searchQuery);

@override
String toString() {
  return 'BondListingState(bonds: $bonds, isLoading: $isLoading, searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class $BondListingStateCopyWith<$Res>  {
  factory $BondListingStateCopyWith(BondListingState value, $Res Function(BondListingState) _then) = _$BondListingStateCopyWithImpl;
@useResult
$Res call({
 List<BondModel> bonds, bool isLoading, String? searchQuery
});




}
/// @nodoc
class _$BondListingStateCopyWithImpl<$Res>
    implements $BondListingStateCopyWith<$Res> {
  _$BondListingStateCopyWithImpl(this._self, this._then);

  final BondListingState _self;
  final $Res Function(BondListingState) _then;

/// Create a copy of BondListingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bonds = null,Object? isLoading = null,Object? searchQuery = freezed,}) {
  return _then(_self.copyWith(
bonds: null == bonds ? _self.bonds : bonds // ignore: cast_nullable_to_non_nullable
as List<BondModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _InitialBondListingState implements BondListingState {
  const _InitialBondListingState({final  List<BondModel> bonds = const [], this.isLoading = false, this.searchQuery}): _bonds = bonds;
  

 final  List<BondModel> _bonds;
@override@JsonKey() List<BondModel> get bonds {
  if (_bonds is EqualUnmodifiableListView) return _bonds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bonds);
}

@override@JsonKey() final  bool isLoading;
@override final  String? searchQuery;

/// Create a copy of BondListingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialBondListingStateCopyWith<_InitialBondListingState> get copyWith => __$InitialBondListingStateCopyWithImpl<_InitialBondListingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitialBondListingState&&const DeepCollectionEquality().equals(other._bonds, _bonds)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_bonds),isLoading,searchQuery);

@override
String toString() {
  return 'BondListingState.initial(bonds: $bonds, isLoading: $isLoading, searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class _$InitialBondListingStateCopyWith<$Res> implements $BondListingStateCopyWith<$Res> {
  factory _$InitialBondListingStateCopyWith(_InitialBondListingState value, $Res Function(_InitialBondListingState) _then) = __$InitialBondListingStateCopyWithImpl;
@override @useResult
$Res call({
 List<BondModel> bonds, bool isLoading, String? searchQuery
});




}
/// @nodoc
class __$InitialBondListingStateCopyWithImpl<$Res>
    implements _$InitialBondListingStateCopyWith<$Res> {
  __$InitialBondListingStateCopyWithImpl(this._self, this._then);

  final _InitialBondListingState _self;
  final $Res Function(_InitialBondListingState) _then;

/// Create a copy of BondListingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bonds = null,Object? isLoading = null,Object? searchQuery = freezed,}) {
  return _then(_InitialBondListingState(
bonds: null == bonds ? _self._bonds : bonds // ignore: cast_nullable_to_non_nullable
as List<BondModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
