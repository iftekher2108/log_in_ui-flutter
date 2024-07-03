import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fingerprint extends StatefulWidget {
  const Fingerprint({super.key, required this.title });
  final String title;

  @override
  State<Fingerprint> createState() => _FingerprintState();
}

class _FingerprintState extends State<Fingerprint> {
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
      body: Container(
        child: Text("finger print"),
      ),
    );
  }
}
