import 'dart:convert';

import 'package:flutter/material.dart';

class image_preview extends StatefulWidget {
  const image_preview({super.key,this.title,this.image});

  final title;
  final image;


  @override
  State<image_preview> createState() => _image_previewState();
}

class _image_previewState extends State<image_preview> {

  @override
  Widget build(BuildContext context) {
     Map data = ModalRoute.of(context)!.settings.arguments as Map;
     print(data);
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(widget.title),
        actions: [
          Container(),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            // Image.file(),
            SizedBox(height: 30,),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                image: const DecorationImage(
                    image: AssetImage("images/iftekher.png")
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        child: Row(
          children: [

          ],
        ),
      ),
    );
  }
}
