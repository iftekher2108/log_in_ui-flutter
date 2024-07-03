import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:outsite_attendance_system/pages/loading.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:outsite_attendance_system/pages/loading.dart';

class login extends StatefulWidget {
  login({super.key, required this.title});
  final String title;

  @override
  State<login> createState() => _loginState();

}

class _loginState extends State<login> {

  final emailText = TextEditingController();
  final passwordText = TextEditingController();

  void log_in() async {
    // var res = await http.get(Uri.parse('http://10.0.2.2:8000/api/get-data'));
    var res = await http.post(
        Uri.parse('http://10.0.2.2:8000/api/user-data'),
        body: {
          "name":"Iftekher Mahmud",
          'email':"${emailText.text}",
          'password':"${passwordText.text}"
        }
    );

    print(jsonEncode(res.body));


  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBody: true,

      appBar: AppBar(
        title: Text(widget.title.toUpperCase()),

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
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 3,sigmaX: 3),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 70,
              ),
              Expanded(
                flex: 2,
                child: Text(
                  'Login System'.toUpperCase(),
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              Expanded(
                flex: 10,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.only(bottom: 20),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailText,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                          ),
                          labelText: "E-mail",
                          labelStyle: Theme.of(context).textTheme.labelMedium,

                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: passwordText,
                        enableInteractiveSelection: false,
                        toolbarOptions: ToolbarOptions(
                          paste: false,
                          cut: false,
                          copy: false,
                          selectAll: false,
                        ),
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.lightBlue,
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                          ),
                          labelText: "Password",
                          labelStyle: Theme.of(context).textTheme.labelMedium,

                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        child: FilledButton(
                          onPressed:(){
                            log_in;
                            Navigator.pushNamed(context,'dashboard');
                          },
                          style: Theme.of(context).textButtonTheme.style?.copyWith( padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(vertical: 15, horizontal: 120))),
                          child: Text("Log In",style: Theme.of(context).textTheme.labelMedium
                          ),
                        )
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),

      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.lightBlue,
      //   onPressed:,
      //   tooltip: '',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
