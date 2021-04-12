import 'package:covidchart/component/color.dart';
import 'package:covidchart/controller/lineController.dart';
import 'package:covidchart/widget/misc/lineTitle.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartPageCard extends StatefulWidget {
  @override
  _LineChartPageCardState createState() => _LineChartPageCardState();
}

class _LineChartPageCardState extends State<LineChartPageCard> {



  List data = [];

  void getDataFromController(){
    LineController.getData().then((value){
      setState(() {
        data = value;

      });

    });
  }

  @override
  void initState() {
    getDataFromController();
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context){

    if(data.isEmpty){
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
            color: MyColor().colorBlueGrey,
            child: Center(
                child: CircularProgressIndicator()
            )
        ),
      );
    }
    else{
      return Container(
        child: Card(
          elevation: 4,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: MyColor().colorBlue,
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: LineChart(
                LineChartData(
                    minX: 1,
                    maxX: 7,
                    minY: 0,
                    maxY: 10,
                    //titlesData: LineTitles.getTitleData(),
                    titlesData: FlTitlesData(
                      show: true,
                      leftTitles: SideTitles(
                          showTitles: true,
                          margin: 8,
                          reservedSize: 38,
                          getTextStyles: (value) => const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 7,
                          ),
                          getTitles: (value){
                            switch (value.toInt()){
                              case 0:
                                return '';
                              case 2:
                                return '200';
                              case 4:
                                return '400';
                              case 6:
                                return '600';
                              case 8:
                                return '800';
                              case 10:
                                return '1000';
                            }
                            return '';
                          }
                      ),
                      bottomTitles: SideTitles(
                          showTitles: true,
                          margin: 8,
                          reservedSize: 30,
                          getTextStyles: (value) => const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 5.7,
                          ),
                          getTitles: (value){
                            switch (value.toInt()){
                              case 1:
                                return '1 Apr 2021';
                              case 2:
                                return '2 Apr 2021';
                              case 3:
                                return '3 Apr 2021';
                              case 4:
                                return '4 Apr 2021';
                              case 5:
                                return '5 Apr 2021';
                              case 6:
                                return '6 Apr 2021';
                              case 7:
                                return '7 Apr 2021';
                            }
                            return '';
                          }
                      ),
                      rightTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 30,
                          getTitles: (value){
                            switch (value.toInt()){
                              case 15:
                                return '';
                              case 20:
                                return '';
                              case 13:
                                return '';
                            }
                            return '';
                          }
                      ),
                      topTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 20,
                          getTitles: (value){
                            switch (value.toInt()){
                              case 15:
                                return '';
                              case 20:
                                return '';
                              case 13:
                                return '';
                            }
                            return '';
                          }
                      ),
                    ),

                    gridData: FlGridData(
                        show: true,
                        getDrawingHorizontalLine: (value){
                          return FlLine(
                            color: Color.fromRGBO(102, 117, 127, 0.7),
                            strokeWidth: 1,
                          );
                        },
                        drawVerticalLine: false,
                        getDrawingVerticalLine: (value){
                          return FlLine(
                            color: Color.fromRGBO(102, 117, 127, 1),
                            strokeWidth: 1,
                          );
                        }
                    ),
                    borderData: FlBorderData(
                      show: true,
                      border: Border(
                          top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.white),
                          bottom: BorderSide(color: Colors.white)
                      ),
                    ),

                    lineBarsData: [
                      LineChartBarData(
                          spots: [
                            for (var i = (data.length-7); i < data.length; i++)...[
                              FlSpot((i + 1) - (data.length-7).toDouble(), data[i]['KASUS'].toDouble()/100)
                            ],
                          ],
                          barWidth: 3,
                          colors: [
                            Color.fromRGBO(251, 24, 24, 1)
                          ]

                      ),
                      LineChartBarData(
                          spots: [
                            for (var i = (data.length-7); i < data.length; i++)...[
                              FlSpot((i + 1) - (data.length-7).toDouble(), data[i]['MENINGGAL'].toDouble()/100)
                            ],
                          ],
                          barWidth: 3,
                          colors: [
                            Colors.black,
                          ]
                      ),

                      LineChartBarData(
                          spots: [
                            for (var i = (data.length - 7); i < data.length; i++)...[
                              FlSpot((i + 1) - (data.length - 7).toDouble(), data[i]['SEMBUH'].toDouble()/100)
                            ],
                          ],
                          barWidth: 3,
                          colors: [
                            MyColor().colorGreen,
                          ]
                      ),
                    ]
                )
            ),
          ),
        ),
      );
    }


  }
}









