// import 'dart:convert';
//
// import 'package:covidchart/controller/lineController.dart';
// import 'package:flutter/material.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:http/http.dart' as http;
//
//
// class BarCHARTForAPI extends StatefulWidget {
//   var x = "hahahaha";
//
//   List data = [
//
//   ];
//
//
//
//   @override
//   _BarCHARTForAPIState createState() => _BarCHARTForAPIState();
// }
//
// class _BarCHARTForAPIState extends State<BarCHARTForAPI> {
//
//   void getDataFromController(){
//     LineController.getData().then((value){
//       setState(() {
//         BarCHARTForAPI().data = value;
//       });
//
//     });
//   }
//
//   List<charts.Series> seriesList;
//   List<charts.Series<DataCvs, String>> _createRandomData()  {
//     print(BarCHARTForAPI().x);
//     print(BarCHARTForAPI().data[0]);
//
//   }
//
//
//
//   @override
//   void initState() {
//     getDataFromController();
//     seriesList = _createRandomData();
//     // TODO: implement initState
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
//
//
// class DataCvs{
//
// }
