
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ExpenseChart extends StatefulWidget {
  @override
  _ExpenseChartState createState() => _ExpenseChartState();
}

class _ExpenseChartState extends State<ExpenseChart> {
  List<PieChartSectionData> _sections = [];

  @override
  void initState() {
    // TODO: implement initState
    _sections = [
      PieChartSectionData(
          color: Colors.blueAccent,
          value: 30,
          title: 'Food',
          radius: 50,
          titleStyle: TextStyle(color: Colors.white),
          showTitle: false),
      PieChartSectionData(
          color: Colors.redAccent,
          value: 30,
          title: 'Rent',
          radius: 50,
          titleStyle: TextStyle(color: Colors.white),
          showTitle: false),
      PieChartSectionData(
          color: Colors.greenAccent,
          value: 10,
          title: 'Travel',
          radius: 50,
          titleStyle: TextStyle(color: Colors.white),
          showTitle: false),
      PieChartSectionData(
          color: Colors.amberAccent,
          value: 20,
          title: 'Snacks',
          radius: 50,
          titleStyle: TextStyle(color: Colors.white),
          showTitle: false),
      PieChartSectionData(
          color: Colors.orangeAccent,
          value: 10,
          title: 'Theatre',
          radius: 50,
          titleStyle: TextStyle(color: Colors.white),
          showTitle: false),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pie Chart'),),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: PieChart(PieChartData(
                  sections: _sections,
                  borderData: FlBorderData(show: false),
                  sectionsSpace: 0,
                  centerSpaceRadius: 40)),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.blueAccent),
                  ),
                  SizedBox(width: 20,),
                  Container(width: 200,
                      child: Text('Food',style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w600),))
                ]),
            SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.redAccent),
                  ),
                  SizedBox(width: 20,),
                  Container(width: 200,
                    child:Text('Rent',style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w600),) ,),
                ]),
            SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.greenAccent),
                  ),
                  SizedBox(width: 20,),
                  Container(width: 200,
                    child:Text('Travel',style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w600),) ,),
                ]),
            SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.amberAccent),
                  ),
                  SizedBox(width: 20,),
                  Container(width: 200,
                    child:Text('Snacks',style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w600),) ,),
                ]),
            SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.orangeAccent),
                  ),
                  SizedBox(width: 20,),
                  Container(width: 200,
                    child:Text('Theatre',style: TextStyle(color: Colors.grey,fontSize: 13,fontWeight: FontWeight.w600),) ,),
                ]),
          ],
        ),
      ),
    );
  }
}