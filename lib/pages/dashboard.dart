import 'dart:ui';

import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key, required this.title});

  final String title;

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(widget.title.toUpperCase(),
        style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      drawer: Drawer(),
      body: Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          image: DecorationImage(
            repeat: ImageRepeat.noRepeat,
            fit: BoxFit.cover,
            alignment: Alignment.center,
            image: AssetImage('images/background.jpg'),
          )
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3,sigmaY: 3),
          child: Container(
            margin: EdgeInsets.only(top: 50,left: 50),
               child: Column(
                 children: [
                   Row(
                     children: [
                       Container(
                         height: 100,
                         width: 100,
                         child: CircleAvatar(
                           backgroundImage:AssetImage('images/iftekher.png'),
                         ),
                       ),
                       SizedBox(width: 25,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("iftekher",style: TextStyle(color: Colors.white,fontSize: 25),),
                           Text("programmer",style: TextStyle(color: Colors.white,fontSize: 13),),
                         ],
                       )
                     ],
                   ),

                 ],
               ),
          ),
        ),
      ),
    );
  }
}
