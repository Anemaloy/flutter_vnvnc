import 'package:flutter/material.dart';
import 'dart:async';
import 'pages/auth_page.dart';
import 'pages/home_page.dart';

var routes = {
  '/': (context) => HomePage(),
  '/auth': (context) => AuthPage(),
};

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: VnvnvcApp(),
  ));
}

class VnvnvcApp extends StatefulWidget {
  _VnvnvcAppState createState() => _VnvnvcAppState();
}

class _VnvnvcAppState extends State<VnvnvcApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AuthPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset('assets/images/logo.jpg',
            width: MediaQuery.of(context).size.width * 0.4),
      ),
    );
  }
}
