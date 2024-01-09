import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ride_share/injection.dart';

import 'core/constants/app_constants.dart';

import 'presentation/routes/app_router.dart';
import 'presentation/style/color_constants.dart';

void main() {
  configureInjection();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //approuter for Navigation
    final appRouter = getIt<AppRouter>();

    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp.router(
              title: AppConstants.kAppTitle,
              routeInformationParser: appRouter.defaultRouteParser(),
              routerDelegate: AutoRouterDelegate(appRouter),
              color: RideShareColours.kPrimaryColor,
              theme: ThemeData.light(),
              debugShowCheckedModeBanner: false,
              builder: (context, child) => MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                    child: child!,
                  ));
        });
  }
}
