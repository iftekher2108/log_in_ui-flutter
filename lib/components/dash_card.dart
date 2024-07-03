import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class dash_card extends StatefulWidget {

  const dash_card(
      {
        super.key,
        required this.title,
        required this.value,
        this.subTitle,
        this.color,
        this.backgroundColor
      }
  );


  final String title;
  final value;
  final subTitle;
  final color;
  final backgroundColor;

  @override
  State<dash_card> createState() => dash_cardState();
}

class dash_cardState extends State<dash_card> {
  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: widget.backgroundColor == null ? Theme.of(context).primaryColor : widget.backgroundColor,
        ),
        height: 120,
        margin:EdgeInsets.all(5),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(widget.title.toUpperCase(),
              style:Theme.of(context).textTheme.headlineMedium?.copyWith(color: widget.color == null ? Colors.black54 : widget.color),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total",style: TextStyle(
                    color: widget.color == null ? Colors.black54 : widget.color,
                  ),),
                  Text(widget.value,style: TextStyle(
                  color: widget.color == null ? Colors.black54 : widget.color,
                  ),),
                ],
              ),
            )
          ],
        ),
      ),
    );

  }
}
