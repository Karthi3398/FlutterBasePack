import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static int numberOfRows = 11;
  int numberOfSquares = numberOfRows*17;
  List<int> barriers = [0,1,2,3,4,5,6,7,8,9,10,11,22,33,44,55,66,77,88,99,110,121,132,143,154,165,176,177,178,179,180,181,182,183,184,185,186,175,164,153,142,131,120,109,98,87,76,65,54,43,32,21];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              child: GridView.builder(
                  itemCount: numberOfSquares,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: numberOfRows

                  ), itemBuilder:(context,i){

                if(barriers.contains(i)){
                  return Padding(padding: EdgeInsets.all(1),
                      child: Container(
                        color: Colors.blue,
                        child: Center(child: Text(i.toString())),
                      ));
                }else{
                  return Padding(padding: EdgeInsets.all(1),
                      child: Container(
                        color: Colors.grey,
                        child: Text(i.toString()),
                      ));

                }

              }),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Score: ',style: TextStyle(color: Colors.white,fontSize: 20)),
                  Text('P L A Y',style: TextStyle(color: Colors.white,fontSize: 20))
                ],
              ),),
          ),
        ],
      ),
    );
  }
}

