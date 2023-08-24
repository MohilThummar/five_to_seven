import 'package:flutter/material.dart';

import 'view/snackbar_and_tost_message.dart';

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
        useMaterial3: true,
      ),
      // initialRoute: RoutesName.initialRoute,
      // routes: AppRoutes().appRoutes,
      home: const SnackBarAndToastMessage(),
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

// Plugins

// MediaQuery
// Project Structure

// Slider
// Date picker
// TimePicker
// CupertinoPicker
// SimpleDialog
// AlertDialog

/// 21-08-2023 (Dart and flutter basic self revision start)
// BottomSheet
// SnackBar
// Toast message

/// 22-08-2023
/// Pass Data using navigation
/// Model class (To - Do App )

/// 26-08-2023
/// Shared preferences (To - Do App)

/// 01-09-2023
/// Firebase

/// 04-09-2023
/// Firebase Auth (Email and password, Google) (Github, PhoneNumber with otp)

/// 05-09-2023
/// Firebase Storage ()

/// 09-09-2023 (optional)
/// Firebase Data Management ()

/// 13-09-2023
/// Api
/// Api method call (Get, Post, Put, Delete)
/// Api Data Management

/// 19-09-2023
/// GetX
/// GetX structure
/// GetX UI and layout
/// GetX Navigation
/// GetX Data management
