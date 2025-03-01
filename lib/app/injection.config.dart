// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:tap_demo/features/bonds_listing/domain/repository/bonds_listing_repo.dart'
    as _i306;
import 'package:tap_demo/features/bonds_listing/presentation/bloc/bond_listing_cubit.dart'
    as _i383;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i306.BondsListingRepo>(() => _i306.BondsListingRepo());
    gh.factory<_i383.BondListingCubit>(
      () => _i383.BondListingCubit(gh<_i306.BondsListingRepo>()),
    );
    return this;
  }
}
