// import 'package:covidchart/component/color.dart';
// import 'package:covidchart/controller/lineController.dart';
// import 'package:fl_chart/fl_chart.dart' as fl;
// import 'package:flutter/material.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
//
//
// class BarChardPage extends StatefulWidget {
//   @override
//   _BarChardPageState createState() => _BarChardPageState();
// }
//
// class _BarChardPageState extends State<BarChardPage> {
//   List<DataCovid> dataCvd;
//
//
//
//   List data = [
//
//   ];
//
//   void getDataFromController(){
//     LineController.getData().then((value){
//       setState(() {
//         data = value;
//         dataCvd = [
//           DataCovid('Mar', data[0]['KASUS'], charts.ColorUtil.fromDartColor(MyColor().colorRed)),
//         ];
//       });
//
//     });
//   }
//
//
//
//   @override
//   void initState() {
//     LineController.getData().then((value){
//       setState(() {
//         data = value;
//       });
//
//       dataCvd = [
//         DataCovid('Mar', data[0]['KASUS'], charts.ColorUtil.fromDartColor(MyColor().colorRed)),
//       ];
//       print(data[0]);
//
//     });
//     // TODO: implement initState
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: MyBarChart(dataCvd)
//     );
//   }
// }
//
//
// class DataCovid{
//   final String bulan;
//   final int kondisi;
//   final charts.Color barColor;
//
//
//   DataCovid(this.bulan, this.kondisi, this.barColor);
// }
//
//
// class MyBarChart extends StatelessWidget {
//   final List<DataCovid> dataLess;
//
//   MyBarChart(this.dataLess);
//
//
//   @override
//   Widget build(BuildContext context) {
//     List<charts.Series<DataCovid, String>> series = [
//       charts.Series(
//           id: 'AppDownloads',
//           data: dataLess,
//           domainFn: (DataCovid dcv, _) => dcv.bulan,
//           measureFn: (DataCovid dcv, _) => dcv.kondisi,
//           colorFn: (DataCovid dcv, _) => dcv.barColor)
//     ];
//
//     return charts.BarChart(
//       series,
//       animate: true,
//       barGroupingType: charts.BarGroupingType.groupedStacked,
//     );
//   }
// }
//
