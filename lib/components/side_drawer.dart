import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class side_drawer extends StatefulWidget {
  const side_drawer({super.key});

  @override
  State<side_drawer> createState() => _drawerState();
}

class _drawerState extends State<side_drawer> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: Color(0xFF2F3645),
        child: Container(

        ),
    );
  }
}
