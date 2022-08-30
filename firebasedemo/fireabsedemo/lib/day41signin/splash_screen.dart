import 'dart:async';

import 'package:fireabsedemo/day41signin/register.dart';
import 'package:fireabsedemo/day41signin/sign_in.dart';
import 'package:fireabsedemo/day41signin/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SignIn(),
        ));
      },
    );
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.blue,
        ),
      ),
    );
  }
}
