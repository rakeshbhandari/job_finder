import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:test_apk_001/page_first.dart';
import 'package:test_apk_001/pages/category_page.dart';
import 'package:test_apk_001/pages/company_page.dart';
import 'package:test_apk_001/pages/error_page.dart';
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
  Widget build(BuildContext context) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: PageFirst(),
      );


}
