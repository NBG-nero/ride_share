// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:ride_share/presentation/screens/home/home_screen.dart' as _i1;
import 'package:ride_share/presentation/screens/home/ride_details.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreenPage(),
      );
    },
    RideDetailsScreenRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.RideDetailsScreenPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeScreenPage]
class HomeScreenRoute extends _i3.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HomeScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeScreenRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.RideDetailsScreenPage]
class RideDetailsScreenRoute extends _i3.PageRouteInfo<void> {
  const RideDetailsScreenRoute({List<_i3.PageRouteInfo>? children})
      : super(
          RideDetailsScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'RideDetailsScreenRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
