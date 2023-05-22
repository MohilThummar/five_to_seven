import 'package:five_to_seven/view_widget/figma_seven_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        // fontFamily: "Alkatra",
      ),
      home: const FigmaSevenScreen(),
    );
  }
}

/// ListTile
/// Common Widget
/// GitHub
/// Listview Builder
/// Listview Separated
/// GridView Builer (Sliver fix count, Sliver max extent)
/// GridView Count
/// GridView Extent
/// BottomNavigationBar
/// TextField
/// Form
/// List Pass in widget
/// Map Pass in widget
/// Map view
