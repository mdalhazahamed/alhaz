import 'package:flutter/material.dart';
import 'package:new_project/Authntications/Registration.dart';
import 'package:new_project/Authntications/login%20page.dart';
import 'package:new_project/BottonNavigatorbar.dart';
import 'package:new_project/pages/Chat_pages.dart';
import 'package:new_project/pages/Home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

