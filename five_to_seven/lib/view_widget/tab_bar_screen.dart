import 'package:five_to_seven/layout_screen/row_column_screen.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tab Bar Screen"),

        ),
        body: Column(
          children: [
            Container(
              height: 80,
              width: 350,
              color: Colors.grey,
              child: TabBar(
                // indicator: BoxDecoration(
                //   // color: Colors.yellow,
                //   border: Border.all(color: Colors.yellow),
                //   borderRadius: BorderRadius.circular(15),
                // ),
                indicatorColor: Colors.indigo,
                indicatorPadding: EdgeInsets.zero,
                indicatorSize: TabBarIndicatorSize.tab,
                // indicatorWeight: 10,

                labelColor: Colors.red,
                labelPadding: const EdgeInsets.symmetric(horizontal: 15),
                labelStyle: const TextStyle(fontSize: 20),

                unselectedLabelColor: Colors.black,
                unselectedLabelStyle: const TextStyle(fontSize: 14),

                dividerColor: Colors.deepOrange,

                isScrollable: true,
                onTap: (value) {
                  debugPrint("Value --> $value");
                },
                physics: const BouncingScrollPhysics(),
                // padding: EdgeInsets.all(10),

                tabs: const [
                  Tab(text: "first"),
                  Tab(text: "second"),
                  Tab(text: "third"),
                  Tab(text: "four"),
                  Tab(text: "five"),
                  Tab(text: "six"),
                  Tab(text: "seven"),
                  Tab(text: "eight"),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  const RowColumnScreen(),
                  Container(color: Colors.yellow),
                  Container(color: Colors.black),
                  Container(color: Colors.pink),
                  Container(color: Colors.orange),
                  Container(color: Colors.blue),
                  Container(color: Colors.deepPurple),
                  Container(color: Colors.pinkAccent),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
