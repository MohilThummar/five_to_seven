import 'package:flutter/material.dart';

import 'first_bottom_screen.dart';
import 'forth_bottom_screen.dart';
import 'second_bottom_screen.dart';
import 'third_bottom_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int currentIndex = 0;

  List<Widget> screenList = [
    const FirstBottomScreen(),
    const SecondBottomScreen(),
    const ThirdBottomScreen(),
    const ForthBottomScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom navigation bar"),
      ),
      body: screenList[currentIndex],
      // bottomSheet: ,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.red,
        currentIndex: currentIndex,
        onTap: (value) {
          debugPrint("Value: --> $value");
          currentIndex = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: "Home",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.message),
            icon: Icon(Icons.message_outlined),
            label: "Message",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.search),
            icon: Icon(Icons.search_outlined),
            label: "Search",
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outlined),
            label: "person",
            backgroundColor: Colors.yellow,
          ),
        ],
      ),
      // bottomNavigationBar: NavigationBar(
      //   selectedIndex: currentIndex,
      //   onDestinationSelected: (int index) {
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      //   destinations: const <NavigationDestination>[
      //     NavigationDestination(
      //       selectedIcon: Icon(Icons.person),
      //       icon: Icon(Icons.person_outline),
      //       label: 'Learn',
      //     ),
      //     NavigationDestination(
      //       selectedIcon: Icon(Icons.engineering),
      //       icon: Icon(Icons.engineering_outlined),
      //       label: 'Relearn',
      //     ),
      //     NavigationDestination(
      //       selectedIcon: Icon(Icons.bookmark),
      //       icon: Icon(Icons.bookmark_border),
      //       label: 'Unlearn',
      //     ),
      //     NavigationDestination(
      //       selectedIcon: Icon(Icons.person),
      //       icon: Icon(Icons.person_outlined),
      //       label: 'Person',
      //     ),
      //   ],
      // ),
    );
  }
}
