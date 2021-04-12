import 'package:covidchart/controller/barController.dart';
import 'package:covidchart/widget/misc/testView.dart';
import 'package:covidchart/widget/misc/testView2.dart';
import 'package:flutter/material.dart';

import 'Page/dashboard.dart';
import 'controller/lineController.dart';
import 'widget/stackedChart.dart';

void main() {



  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/' :(context) => MyApp(),
      } ,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dashboard();
  }
}





