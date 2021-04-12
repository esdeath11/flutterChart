import 'package:covidchart/component/color.dart';
import 'package:flutter/material.dart';

import 'lineChartPage.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chart Covid 19'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 300,
                child:
                LineChartPageCard()
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    new Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: MediaQuery.of(context).size.width * 0.03,
                          height: MediaQuery.of(context).size.width * 0.03,
                          color: MyColor().colorRed,
                        ),
                        Text('Kasus'),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: MediaQuery.of(context).size.width * 0.03,
                          height: MediaQuery.of(context).size.width * 0.03,
                          color: MyColor().colorGreen,
                        ),
                        Text('Sembuh'),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: MediaQuery.of(context).size.width * 0.03,
                          height: MediaQuery.of(context).size.width * 0.03,
                          color: MyColor().colorBlack,
                        ),
                        Text('Meninggal'),
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 50),
                        child:
                        Text("Rasio = Jumlah/100")
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
