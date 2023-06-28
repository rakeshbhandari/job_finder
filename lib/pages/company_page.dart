import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:test_apk_001/pages/error_page.dart';

class CompanyPage extends StatelessWidget {
  const CompanyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Text('Company Page'),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const ErrorPage());
                },
                child: const Text("Error Page")),
          ],
        ),
      );
}
