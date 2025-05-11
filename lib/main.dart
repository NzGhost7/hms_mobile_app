import 'package:flutter/material.dart';
import 'package:hms_mobile_app/pages/login.dart';
import 'package:hms_mobile_app/pages/mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'InriaSans', // Set your desired font family here
          colorScheme: ColorScheme(
            primary: Color(0xFF27548A), //  biru
            secondary: Color(0xFFDDA853), //  kuning pekat
            surface: Color(0xFFF3F3E0), //  kuning cair
            background: Color(0xFFDDA853), // Background color
            error: Colors.red, // Error color
            onPrimary: Color(0xFFF3F3E0), // Text color on primary
            onSecondary: Colors.black, // Text color on secondary
            onSurface: Colors.black, // Text color on surface
            onBackground: Colors.black, // Text color on background
            onError: Colors.white, // Text color on error
            brightness: Brightness.light, // Light or dark theme
          ),
        ),
        initialRoute: '/login',
        routes: {
          '/login': (context) => Login(),
          '/main': (context) => const Mainpage(),
        },
      ),
    );
  }
}