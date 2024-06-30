import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:outsite_attendance_system/pages/dashboard.dart';
import 'package:outsite_attendance_system/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        // text Theme
        textTheme: TextTheme(
          titleMedium: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.white,
            fontFamily: 'roboto-bold',
            fontSize: 18,
            letterSpacing: 5,
          ),
          headlineMedium: TextStyle(
            color: Colors.lightBlue,
            fontSize: 30,
            fontFamily: 'roboto-bold',
            fontWeight: FontWeight.w900,
            letterSpacing: 3,
          ),
          labelMedium: TextStyle(
            color: Colors.white,
            fontSize: 15,
            letterSpacing: 3,
          ),
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.lightBlue,
        ),

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.white,
            fontFamily: 'roboto-bold',
            fontSize: 18,
            letterSpacing: 5,
          ),
        ),

        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: login(title: 'Attendance System'),
      routes: {
        "dashboard": (context) => dashboard(title: "Dashboard"),
      },
    );
  }
}
