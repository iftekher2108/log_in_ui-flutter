import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:outsite_attendance_system/components/side_drawer.dart';
import 'package:outsite_attendance_system/components/dash_card.dart';

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
        title: Text(widget.title.toUpperCase()),
        actions: [
          Container(),
        ],
      ),
      endDrawer: side_drawer(),
      body: Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            image: DecorationImage(
          repeat: ImageRepeat.noRepeat,
          fit: BoxFit.cover,
          alignment: Alignment.center,
          image: AssetImage('images/background.jpg'),
        )),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/iftekher.png'),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Iftekher Mahmud",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            "Jr Programmer",
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
                Row(
                  children: const [
                    dash_card(
                      title: "Attend",
                      value: "1",
                      color: Colors.white,
                      backgroundColor: Color(0xFF3FA2F6),
                    ),
                    dash_card(
                        title: "Absent",
                        value: "1",
                        color: Colors.white,
                        backgroundColor: Color(0xFF379777)),
                    dash_card(
                        title: "Total Count",
                        value: "1",
                        color: Colors.white,
                        backgroundColor: Color(0xFF088395)),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'face-detect');
                          },
                          style: Theme.of(context).textButtonTheme.style,
                          child: Text(
                            "Face Detect",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.white),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "finger-print");
                          },
                          style: Theme.of(context).textButtonTheme.style,
                          child: Text(
                            'FingerPrint',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.white),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  clipBehavior: Clip.hardEdge,
                  width: double.infinity,
                  height: 500,
                  child: SingleChildScrollView(

                    child: Column(
                      children: [
                        Table(
                          columnWidths:{
                            0:FractionColumnWidth(0.12),
                          },
                          border: TableBorder.all(color: Colors.grey),
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: [
                            TableRow(
                                decoration: BoxDecoration(
                                    // color: Theme.of(context).colorScheme.primary
                                    color: Colors.teal),
                                children: [
                                  TableCell(
                                      child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "Id",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(color: Colors.white),
                                    ),
                                  )),
                                  TableCell(
                                      child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "Name",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(color: Colors.white),
                                    ),
                                  )),
                                  TableCell(
                                      child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "Location",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(color: Colors.white),
                                    ),
                                  )),
                                  TableCell(
                                      child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "Status",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(color: Colors.white),
                                    ),
                                  ))
                                ]),
                            ...List.generate(
                                20,
                                (index) => TableRow(children: [
                                      TableCell(
                                          child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Text(
                                          "${index}",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(color: Colors.white),
                                        ),
                                      )),
                                      TableCell(
                                          child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Text(
                                          "Location",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(color: Colors.white),
                                        ),
                                      )),
                                      TableCell(
                                          child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Text(
                                          "Location",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(color: Colors.white),
                                        ),
                                      )),
                                      TableCell(
                                          child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Text(
                                          "Location",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(color: Colors.white),
                                        ),
                                      )),
                                    ]))
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
