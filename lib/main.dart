import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_apk_001/page_first.dart';
import 'package:test_apk_001/pages/category_page.dart';
import 'package:test_apk_001/pages/company_page.dart';
import 'package:test_apk_001/pages/jobs_page.dart';

import 'routes/app_router_config.dart';

// import 'routes/app_routes_consts.dart.dart';
// // import 'package:flutter/rendering.dart';

void main() =>
    // debugPaintSizeEnabled = true;
    runApp(MainApp());

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerDelegate: _router.routerDelegate,
        routeInformationParser: _router.routeInformationParser,
        routeInformationProvider: _router.routeInformationProvider,
        debugShowCheckedModeBanner: false,
      );

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        routes: <GoRoute>[
          GoRoute(
            path: 'jobpage',
            builder: (BuildContext context, GoRouterState state) =>
                const JobsPage(),
          ),
          GoRoute(
            path: 'categorypage',
            builder: (BuildContext context, GoRouterState state) =>
                const CategoryPage(),
          ),
          GoRoute(
            path: 'companypage',
            builder: (BuildContext context, GoRouterState state) =>
                const CompanyPage(),
          )
        ],
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const PageFirst(),
      ),
    ],
  );
}
