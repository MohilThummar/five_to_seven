import 'package:five_to_seven/bottom_view/bottom_bar_screen.dart';
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
      ),
      home: const BottomBarScreen(),
    );
  }
}

// TextField

// Buttons (All Types)
// GestureDetector Button
// Inkwell
// BackButton
// Elevated Button
// OutLineButton
// FloatingActionButton
// TextButton
// IconButton
// SwitchButton
// CheckBoxButton
// DropDownButton
// RadioButton
// RadioListTileButton
// PopupMenuButton

// BottomNavigationBar

// Navigation

/// Form

/// Plugins
/// RangeSlider

/// MediaQuery
/// Project Structure

/// Slider
/// Date picker
/// TimePicker
/// CupertinoPicker
/// SimpleDialog
/// AlertDialog
/// BottomSheet
/// SnackBar
/// Toast message

/// Map view
