import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class loading extends StatefulWidget {
  const loading({super.key});
  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> with SingleTickerProviderStateMixin {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 2),(){
      Navigator.of(context).pushReplacementNamed("login");
    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
    super.dispose();
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
                  height: 85,
                  width: 85,
                  child: CircularProgressIndicator(
                    strokeWidth: 5,
                    color: Colors.white,
                  )
              ),
              SizedBox(height: 30,),
        
              Text("Loading..."),
            ],
          ),
        ),
      ),
    );
  }
}
