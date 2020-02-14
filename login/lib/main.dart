import 'package:flutter/material.dart';
import 'login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    loginpage.tag : (context) => loginpage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: 'Nunito',
      ),
      home: loginpage(),
      routes: routes,
    );
  }
}