import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:test_apk_001/pages/company_page.dart';
import 'package:test_apk_001/routes/app_routes_consts.dart';

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
              onTap: () => context.go('/categorypage'),
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
                  onPressed: () => context.push('/categorypage'),
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
            const Column(
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
                      onPressed: null,
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
                            Text('Gobook Tech.Los Angeles')
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
                            'It is a long established fact that a reader be distracted by content of page when looking at its layout'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('\$35000 - \$85000 a year'),
                        const SizedBox(width: 150),
                        ElevatedButton(
                          onPressed: () => context.go('/jobpage'),
                          child: const Text('Apply'),
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
                          onPressed: () => context.push('/categorypage'),
                          child: const Text('Apply'),
                        ),
                      ],
                    ),
                  ],
                )),
            SizedBox(height: 10),
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
                  context.push("/jobspage");
                },
                child: const Text("test")),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
