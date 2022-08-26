import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Settings Page",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
 