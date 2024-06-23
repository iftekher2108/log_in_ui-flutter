import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Attendance System',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner:false,
      home: const MyHomePage(title: 'Attendance System'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // leading: Icon(
        //   Icons.person_outline_sharp,
        //   color: Colors.white,
        //   size: 30,
        // ),
        backgroundColor:Colors.lightBlue,
        title: Text(
          widget.title.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.white,
            fontFamily: 'roboto-bold',
            letterSpacing: 5,
          ),
        ),
        //
        // actions: [
        //   ElevatedButton(
        //     style: ButtonStyle(
        //       backgroundColor: MaterialStatePropertyAll<Color>(Colors.lightBlue),
        //       shadowColor: MaterialStatePropertyAll<Color>(Colors.transparent),
        //     ),
        //     onPressed:() {
        //
        //   },
        //       child:Icon(Icons.more_vert,color: Colors.white,),
        //
        //   )
        // ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/background.jpg',
            ),
            fit: BoxFit.cover,
            alignment: Alignment.center,
            repeat: ImageRepeat.noRepeat,
          ),
        ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 200,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Login System'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'roboto-bold',
                        letterSpacing: 3,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                       margin: EdgeInsets.only(bottom: 20),
                       child: TextField(
                         style: TextStyle(
                           color: Colors.white,
                         ),
                          decoration: InputDecoration(
                            labelText: "E-mail",
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              letterSpacing: 3,

                            )

                          ),
                        ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              letterSpacing: 3,

                            )

                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: FilledButton(onPressed:() {

                      },
                        style: ButtonStyle(
                          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(18.0),bottomRight: Radius.circular(18.0))
                            )
                          ),
                          backgroundColor:MaterialStatePropertyAll<Color>(Colors.lightBlue),
                          padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(vertical: 12, horizontal: 120))
                        ),
                          child: Text("Log In",style: TextStyle(
                                fontSize: 15,
                            letterSpacing: 3
                          ),),
                      )
                      ),
                  ],
                ),
              ],
            ),

      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.lightBlue,
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
