// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BondDetailsState {

 dynamic get isLoading; BondDetailsModel? get bondDetails; dynamic get showRevenueChart;
/// Create a copy of BondDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BondDetailsStateCopyWith<BondDetailsState> get copyWith => _$BondDetailsStateCopyWithImpl<BondDetailsState>(this as BondDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BondDetailsState&&const DeepCollectionEquality().equals(other.isLoading, isLoading)&&(identical(other.bondDetails, bondDetails) || other.bondDetails == bondDetails)&&const DeepCollectionEquality().equals(other.showRevenueChart, showRevenueChart));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(isLoading),bondDetails,const DeepCollectionEquality().hash(showRevenueChart));

@override
String toString() {
  return 'BondDetailsState(isLoading: $isLoading, bondDetails: $bondDetails, showRevenueChart: $showRevenueChart)';
}


}

/// @nodoc
abstract mixin class $BondDetailsStateCopyWith<$Res>  {
  factory $BondDetailsStateCopyWith(BondDetailsState value, $Res Function(BondDetailsState) _then) = _$BondDetailsStateCopyWithImpl;
@useResult
$Res call({
 dynamic isLoading, BondDetailsModel? bondDetails, dynamic showRevenueChart
});


$BondDetailsModelCopyWith<$Res>? get bondDetails;

}
/// @nodoc
class _$BondDetailsStateCopyWithImpl<$Res>
    implements $BondDetailsStateCopyWith<$Res> {
  _$BondDetailsStateCopyWithImpl(this._self, this._then);

  final BondDetailsState _self;
  final $Res Function(BondDetailsState) _then;

/// Create a copy of BondDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = freezed,Object? bondDetails = freezed,Object? showRevenueChart = freezed,}) {
  return _then(_self.copyWith(
isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as dynamic,bondDetails: freezed == bondDetails ? _self.bondDetails : bondDetails // ignore: cast_nullable_to_non_nullable
as BondDetailsModel?,showRevenueChart: freezed == showRevenueChart ? _self.showRevenueChart : showRevenueChart // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of BondDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BondDetailsModelCopyWith<$Res>? get bondDetails {
    if (_self.bondDetails == null) {
    return null;
  }

  return $BondDetailsModelCopyWith<$Res>(_self.bondDetails!, (value) {
    return _then(_self.copyWith(bondDetails: value));
  });
}
}


/// @nodoc


class _InitialBondDetailsState implements BondDetailsState {
  const _InitialBondDetailsState({this.isLoading = false, this.bondDetails, this.showRevenueChart = false});
  

@override@JsonKey() final  dynamic isLoading;
@override final  BondDetailsModel? bondDetails;
@override@JsonKey() final  dynamic showRevenueChart;

/// Create a copy of BondDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialBondDetailsStateCopyWith<_InitialBondDetailsState> get copyWith => __$InitialBondDetailsStateCopyWithImpl<_InitialBondDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InitialBondDetailsState&&const DeepCollectionEquality().equals(other.isLoading, isLoading)&&(identical(other.bondDetails, bondDetails) || other.bondDetails == bondDetails)&&const DeepCollectionEquality().equals(other.showRevenueChart, showRevenueChart));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(isLoading),bondDetails,const DeepCollectionEquality().hash(showRevenueChart));

@override
String toString() {
  return 'BondDetailsState.initial(isLoading: $isLoading, bondDetails: $bondDetails, showRevenueChart: $showRevenueChart)';
}


}

/// @nodoc
abstract mixin class _$InitialBondDetailsStateCopyWith<$Res> implements $BondDetailsStateCopyWith<$Res> {
  factory _$InitialBondDetailsStateCopyWith(_InitialBondDetailsState value, $Res Function(_InitialBondDetailsState) _then) = __$InitialBondDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 dynamic isLoading, BondDetailsModel? bondDetails, dynamic showRevenueChart
});


@override $BondDetailsModelCopyWith<$Res>? get bondDetails;

}
/// @nodoc
class __$InitialBondDetailsStateCopyWithImpl<$Res>
    implements _$InitialBondDetailsStateCopyWith<$Res> {
  __$InitialBondDetailsStateCopyWithImpl(this._self, this._then);

  final _InitialBondDetailsState _self;
  final $Res Function(_InitialBondDetailsState) _then;

/// Create a copy of BondDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = freezed,Object? bondDetails = freezed,Object? showRevenueChart = freezed,}) {
  return _then(_InitialBondDetailsState(
isLoading: freezed == isLoading ? _self.isLoading! : isLoading ,bondDetails: freezed == bondDetails ? _self.bondDetails : bondDetails // ignore: cast_nullable_to_non_nullable
as BondDetailsModel?,showRevenueChart: freezed == showRevenueChart ? _self.showRevenueChart! : showRevenueChart ,
  ));
}

/// Create a copy of BondDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BondDetailsModelCopyWith<$Res>? get bondDetails {
    if (_self.bondDetails == null) {
    return null;
  }

  return $BondDetailsModelCopyWith<$Res>(_self.bondDetails!, (value) {
    return _then(_self.copyWith(bondDetails: value));
  });
}
}

// dart format on
