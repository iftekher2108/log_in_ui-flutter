import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class loading extends StatefulWidget {
  const loading({super.key});
  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),(){
      // Navigator.of(context).pushReplacementNamed("login");
      Get.offNamed('/login');
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue,Colors.blueAccent],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 55,
                  width: 55,
                  child: CircularProgressIndicator(
                    strokeWidth: 5,
                    color: Colors.white,
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
