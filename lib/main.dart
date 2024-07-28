import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:face_camera/face_camera.dart';
import 'package:get_storage/get_storage.dart';
import 'package:outsite_attendance_system/pages/Facedetect.dart';
import 'package:outsite_attendance_system/pages/FingerPrint.dart';
import 'package:outsite_attendance_system/pages/dashboard.dart';
import 'package:outsite_attendance_system/pages/image_preview.dart';
import 'package:outsite_attendance_system/pages/loading.dart';
import 'package:outsite_attendance_system/pages/login.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await FaceCamera.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.circularReveal,
      transitionDuration: Duration(milliseconds: 800),
      theme: ThemeData(
        // text Theme
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.lightBlue,
            fontFamily: 'roboto-bold',
            fontSize: 25,
            letterSpacing: 2,
          ),
          titleMedium: TextStyle(
            color: Colors.lightBlue,
            fontSize: 20,
            fontFamily: 'roboto-bold',
            fontWeight: FontWeight.w600,
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

        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.light
          ),
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.white,
            fontFamily: 'roboto-bold',
            fontSize: 15,
            letterSpacing: 3,
          ),

        ),
       textButtonTheme: const TextButtonThemeData(
         style: ButtonStyle(
                 shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                     RoundedRectangleBorder(
                         borderRadius: BorderRadius.all(Radius.circular(5))
                     )
                 ),
                 backgroundColor:WidgetStatePropertyAll<Color>(Colors.lightBlue),
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
      getPages: [
        GetPage(name: "/login", page:() => login(title: 'Attendance System')),
        GetPage(name: "/dashboard", page: () => dashboard(title: "Dashboard")),
        GetPage(name: '/finger-print' , page: () => Fingerprint(title: "Finger Print ")),
        GetPage(name: '/face-detect', page: () => Facedetect(title: "Face Detect")),
        GetPage(name: '/image-preview', page: () => image_preview()),
      ],

    );
  }
}
