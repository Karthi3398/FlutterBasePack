
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ExpenseTrack extends StatefulWidget {
  @override
  _ExpenseTrackState createState() => _ExpenseTrackState();
}

class _ExpenseTrackState extends State<ExpenseTrack> {
  CalendarController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            SizedBox(
              height: 30,
            ),
            TableCalendar(
              startingDayOfWeek: StartingDayOfWeek.monday,
              calendarStyle: CalendarStyle(

                weekdayStyle: TextStyle(fontWeight: FontWeight.normal),
                weekendStyle: TextStyle(fontWeight: FontWeight.normal),
                selectedColor: Colors.orangeAccent,
                todayColor: Colors.blueGrey,
              ),

              daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: TextStyle(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleTextStyle: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                leftChevronIcon: Icon(
                  Icons.chevron_left,
                  color: Colors.orangeAccent,
                ),
                rightChevronIcon: Icon(
                  Icons.chevron_right,
                  color: Colors.orangeAccent,
                ),
              ),
              calendarController: _controller,
              onDaySelected: (day,events,holidays){

              },
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Text(
                        'Today',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Colors.orange[900]),
        backgroundColor: Colors.white,

      ),
    );
  }
}
