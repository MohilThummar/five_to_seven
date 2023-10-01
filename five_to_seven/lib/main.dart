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

// BottomSheet
// SnackBar
// Toast message

// Pass Data using navigation
// Model class (To - Do App )

// Shared preferences (To - Do App)

// Firebase

// Firebase Auth (Email and password, Google) (Github, PhoneNumber with otp)

// Firebase Storage ()

// Firebase Data Management ()

// Api
// Api method call (Get, Post, Put, Delete)
// Api Data Management

/// GetX
/// GetX structure
/// GetX UI and layout
/// GetX Navigation
/// GetX Data management
