import 'package:flutter/material.dart';

void main()=> runApp( Counter() );


class Counter extends StatefulWidget {

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _x=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
        ),

        body: SingleChildScrollView(
          child: Container(
          margin: EdgeInsets.all(75),
          child: Column(
            children: [
              SizedBox(height: 20.0,),

              SizedBox(

                height: 60,
                width: double.infinity,

                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(color: Colors.amber)
                            )),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.indigo
                        )
                    ),
                    onPressed: (){
                      setState(() {
                        _x++;
                      });
                      print(_x);
                    },
                    child: Text("+",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    )),
              ),
              SizedBox(height: 20.0,),

              SizedBox(

                height: 60,
                width: double.infinity,

                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(color: Colors.amber)
                            )),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.orange
                        )
                    ),
                    onPressed: (){
                      setState(() {
                        _x--;
                      });

                      print(_x);
                    },
                    child: Text("-",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    )),
              ),
              SizedBox(height: 10.0,),
              Text(_x.toString(),style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
      ),
    );
  }
}

