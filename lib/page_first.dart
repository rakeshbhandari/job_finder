import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:test_apk_001/pages/category_page.dart';
import 'package:test_apk_001/pages/jobs_page.dart';
// import 'package:test_apk_001/pages/company_page.dart';
// import 'package:test_apk_001/routes/app_routes_consts.dart';

// import 'pages/category_page.dart';
// import 'widgets/cardWidget.dart';
import '../widgets/gridWidget.dart';
// import 'package:test_apk_001/routes/app_router_config.dart';

class PageFirst extends StatelessWidget {
  const PageFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepOrangeAccent),
                accountName: Text(
                  "Random User",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("randomuser@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "R",
                    style: TextStyle(
                        fontSize: 30.0, color: Colors.deepOrangeAccent),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person_2_sharp),
              title: Text(' My Profile '),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.type_specimen_sharp),
              onTap: () {
                Get.to(() => const CategoryPage());
              },
              title: Text(' Categories '),
            ),
            ListTile(
              leading: Icon(Icons.workspace_premium),
              title: Text(' Job '),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.apartment_sharp),
              title: Text(' Companies '),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.note_add_sharp),
              title: Text(' About '),
              onTap: null,
            ),
            // ListTile(
            //   leading: const Icon(Icons.logout),
            //   title: const Text('LogOut'),
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            // ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const <Widget>[
          IconButton(
            icon: Icon(
              Icons.search_rounded,
              color: Colors.white,
            ),
            onPressed: null,
            tooltip: 'Search',
          ),
          IconButton(
            icon: Icon(
              Icons.filter_list,
              color: Colors.white,
            ),
            onPressed: null,
            tooltip: 'Filter',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'All Categories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                SizedBox(
                  width: 180,
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => const CategoryPage());
                  },
                  child: Text('see all',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: SizedBox(
                  height: 100,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
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
                    itemCount: 10,
                  ),
                )),

            const SizedBox(height: 10),
            //jobs section suru
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Jobs',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() => const JobsPage());
                      },
                      child: Text('see all',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            //card jobs
            Card(
                elevation: 10,
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.bar_chart,
                          size: 40,
                        ),
                        SizedBox(width: 10, height: 50),
                        Column(
                          children: [
                            Text(
                              'Angular Developer',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text('ChromeLab ,Biratnagar')
                          ],
                        ),
                        SizedBox(width: 140),
                        Icon(
                          Icons.bookmark_outline,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Column(
                      children: [
                        Text(
                            'Requirement for 10 Angular Developer with 5+ work experience.'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('\$50000 - \$90000 a year'),
                        const SizedBox(width: 150),
                        ElevatedButton(
                          onPressed: () {
                            Get.snackbar(
                              "Urgently Required", // title
                              "We are looking for a urgent angular developer . Hiring immediately  interns. Thank you!", // message
                              icon: Icon(Icons.info_sharp),
                              shouldIconPulse: true,
                              onTap: null,
                              barBlur: 4000,
                              isDismissible: true,
                              duration: Duration(seconds: 4),
                              snackStyle: SnackStyle.FLOATING,
                            );
                          },
                          child: const Text('Details'),
                        ),
                      ],
                    )
                  ],
                )),
            const SizedBox(height: 10),
            //card jobs
            Card(
                clipBehavior: Clip.hardEdge,
                elevation: 10,
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.pie_chart,
                          size: 40,
                        ),
                        SizedBox(width: 10, height: 50),
                        Column(
                          children: [
                            Text(
                              'Flutter Developer',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text('Gobook Tech.Los Angeles')
                          ],
                        ),
                        SizedBox(width: 150),
                        Icon(
                          Icons.bookmark_outline,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Column(
                      children: [
                        Text(
                            'It is a long established fact that a reader be distracted by content of page when looking at its layout.'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('\$35000 - \$85000 a year'),
                        const SizedBox(width: 150),
                        ElevatedButton(
                          onPressed: () {
                            Get.snackbar(
                              "Urgently Required", // title
                              "We are looking for a urgent flutter developer . Hiring immediately  interns. Thank you!", // message
                              icon: Icon(Icons.alarm),
                              shouldIconPulse: true,
                              onTap: null,
                              barBlur: 1000,
                              isDismissible: true,
                              duration: Duration(seconds: 4),
                            );
                          },
                          child: const Text('Details'),
                        ),
                      ],
                    ),
                  ],
                )),
            const SizedBox(height: 10),
            const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Companies',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    Text('See all'),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                child: SizedBox(
                  height: 100,
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 300,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 40,
                        childAspectRatio: 4 / 4,
                      ),
                      itemBuilder: (context, index) {
                        return gridWidget();
                      },
                      itemCount: 10),
                )),
            const SizedBox(height: 100),
            ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    "Hey i'm a Get SnackBar!", // title
                    "It's unbelievable! I'm using SnackBar without context, without boilerplate, without Scaffold, it is something truly amazing!", // message
                    icon: Icon(Icons.alarm),
                    shouldIconPulse: true,
                    onTap: null,
                    barBlur: 30,
                    isDismissible: true,
                    duration: Duration(seconds: 4),
                  );
                },
                child: const Text("test")),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
