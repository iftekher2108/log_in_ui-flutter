import 'dart:convert';
import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:outsite_attendance_system/pages/Facedetect.dart';
import 'package:outsite_attendance_system/pages/FingerPrint.dart';
import 'package:outsite_attendance_system/pages/dashboard.dart';
import 'package:outsite_attendance_system/pages/loading.dart';
import 'package:outsite_attendance_system/pages/login.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FaceCamera.initialize();
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
          titleLarge: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.lightBlue,
            fontFamily: 'roboto-bold',
            fontSize: 25,
            letterSpacing: 2,
          ),
          headlineLarge: TextStyle(
            color: Colors.lightBlue,
            fontSize: 30,
            fontFamily: 'roboto-bold',
            fontWeight: FontWeight.w900,
            letterSpacing: 3,
          ),
          headlineMedium: TextStyle(
            fontSize: 15,
            fontFamily: 'roboto-bold',
            fontWeight: FontWeight.w600,
          ),
          bodyMedium: TextStyle(
            fontSize: 12,
            fontFamily: 'open-sans',
            fontWeight: FontWeight.w600,
          ),
          bodySmall: TextStyle(
            fontSize: 10,
            fontFamily: "open-sans",
            fontWeight: FontWeight.w300
          ),
          labelMedium: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'open-sans',
            letterSpacing: 3,
          ),
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.lightBlue,
        ),

        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.light
          ),
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
       textButtonTheme: TextButtonThemeData(
         style: ButtonStyle(
                 shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                     RoundedRectangleBorder(
                         borderRadius: BorderRadius.all(Radius.circular(5))
                     )
                 ),
                 backgroundColor:MaterialStatePropertyAll<Color>(Colors.lightBlue),
         )
       ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.lightBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          )
        ),

        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: loading(),
      routes: {
        "login":(context) => login(title: 'Attendance System'),
        "dashboard": (context) => dashboard(title: "Dashboard"),
        'finger-print': (content) => Fingerprint(title: "Finger Print "),
        'face-detect':(context) => Facedetect(title: "Face Detect"),
      },
    );
  }
}
