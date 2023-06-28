import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_apk_001/page_first.dart';
import 'package:test_apk_001/widgets/gridWidget.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Category Page'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Get.to(() => const PageFirst());
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  child: SizedBox(
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  gridDelegate:
                      const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 40,
                    childAspectRatio: 3 / 3,
                  ),
                  itemBuilder: (context, index) {
                    return gridWidget();
                  },
                  itemCount: 20,
                ),
              )),
            ],
          ),
        ),
      );
}
