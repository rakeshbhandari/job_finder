import 'package:flutter/material.dart';

import 'routes/app_router_config.dart';

// import 'routes/app_routes_consts.dart.dart';
// // import 'package:flutter/rendering.dart';

void main() =>
    // debugPaintSizeEnabled = true;
    runApp(MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: MyAppRouter().router.routeInformationParser,
      routeInformationProvider: MyAppRouter().router.routeInformationProvider,
      routerDelegate: MyAppRouter().router.routerDelegate,
    );
  }
}
