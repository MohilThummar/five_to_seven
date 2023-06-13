import 'package:flutter/material.dart';

import 'layout_screen/button_screen.dart';

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
      home: const ButtonScreen(),
    );
  }
}

/// Buttons (All Types)
/// GestureDetector Button
/// Inkwell
/// BackButton
/// Elevated Button
/// OutLineButton
/// FloatingActionButton
/// TextButton
/// IconButton
/// SwitchButton
/// CheckBoxButton
/// --> DropDownButton
/// --> RadioButton
/// --> RadioListTileButton
/// --> PopupMenuButton
/// --> BottomNavigationBar

/// Form

/// Plugins
/// RangeSlider

/// MediaQuery
/// Project Structure

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
