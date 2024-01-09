import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'app_router.gr.dart';

export 'app_router.gr.dart';
// part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
@LazySingleton()
class AppRouter extends $AppRouter {
    @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: HomeScreenRoute.page,
          initial: true,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
         CustomRoute(
          page: RideDetailsScreenRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
      ];
}
