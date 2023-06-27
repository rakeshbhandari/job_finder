import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../page_first.dart';
import '../pages/category_page.dart';
import '../pages/company_page.dart';
import '../pages/error_page.dart';
import '../pages/jobs_page.dart';
import 'app_routes_consts.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: MyAppRouterConstants.homeRouteName,
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: PageFirst());
        },
      ),
      GoRoute(
        name: MyAppRouterConstants.categoryRouteName,
        path: '/CategoryPage',
        pageBuilder: (context, state) {
          return const MaterialPage(child: CategoryPage());
        },
      ),
      GoRoute(
        name: MyAppRouterConstants.jobsRouteName,
        path: '/JobsPage',
        pageBuilder: (context, state) {
          return MaterialPage(child: JobsPage());
        },
      ),
      GoRoute(
        name: MyAppRouterConstants.companyRouteName,
        path: '/CompanyPage',
        pageBuilder: (context, state) {
          return const MaterialPage(child: CompanyPage());
        },
      )
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: ErrorPage());
    },
  );
}
