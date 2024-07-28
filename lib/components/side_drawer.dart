import 'package:flutter/material.dart';

class side_drawer extends StatefulWidget {
  const side_drawer({super.key, this.name, this.email});
  final name;
  final email;

  @override
  State<side_drawer> createState() => _drawerState();
}

class _drawerState extends State<side_drawer> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: const Color(0xFF2F3645),
        child: SafeArea(

          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 40,
                ),
                SizedBox(height: 10,),
                Text("${widget.name}",style: Theme.of(context).textTheme.titleMedium,),
                Text("${widget.email}",style: Theme.of(context).textTheme.bodySmall,),
              ],
            ),
          ),
        ),
    );
  }
}
