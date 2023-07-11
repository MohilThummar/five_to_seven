import 'package:flutter/material.dart';

import 'view_widget/text_form_filed_screen.dart';

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
      // initialRoute: RoutesName.initialRoute,
      // routes: AppRoutes().appRoutes,
      home: const TextFormFiledScreen(),
    );
  }
}

// Stateless Widget
// Stateful Widget
// Material App
// Cupertino App

// Scaffold
// Container
// SafeArea
// Column
// Row
// Text (Font Family)
// Icon
// Image (Assets, Network)
// AppBar
// Drawer
// EndDrawer
// Padding
// Align
// Center
// ClipRect
// ClipRRect
// ClipOvel
// SizedBox
// Expanded
// Flexible
// Stack
// Positioned
// Divider
// Spacer
// RichText
// TabBar

// SingleChildScrollView
// Listview
// ListTile

// Common Widget
// GitHub

// Listview Builder
// Listview Separated
// GridView Builer (Sliver fix count, Sliver max extent)
// GridView Count
// GridView Extent

// Map view

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

// Form

/// Plugins

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
