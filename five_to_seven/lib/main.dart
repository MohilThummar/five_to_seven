import 'package:flutter/material.dart';

import 'view_widget/text_filed_screen.dart';

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
      ),
      home: const TextFiledScreen(),
    );
  }
}

/// Form

/// Plugins
/// RangeSlider

/// MediaQuery
/// Project Structure

/// Buttons (All Types)
/// --> GestureDetector Button
/// --> Inkwell
/// --> BackButton
/// --> Elevated Button
/// --> OutLineButton
/// --> FlotingActionButton
/// --> TextButton
/// --> IconButton
/// --> SwitchButton
/// --> CheackBoxButton
/// --> DropeDownButton
/// --> RadioButton
/// --> RadioListTileButton
/// --> PopupMenuButton
/// --> BottomNavigationBar

/// Slider
/// Datepicker
/// TimePicker
/// CupertinoPicker
/// SimpleDialog
/// AlertDialog
/// BottomSheet
/// SnackBar
/// Tostmessage

/// Map view
