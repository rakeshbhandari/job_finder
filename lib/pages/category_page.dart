import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:test_apk_001/pages/company_page.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Text('Category Page'),
              ElevatedButton(
                  onPressed: () {
                    Get.off(() => const CompanyPage());
                  },
                  child: const Text("Company Page")),
            ],
          ),
        ),
      );
}
