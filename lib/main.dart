import 'package:flutter/material.dart';   //the basic package which uses material design
import 'dart:math';                 // we need to generate the random numbers
void main(){                        // everything starts from main
  runApp(MyApp());                  //runApp method is used to run a class or a widget here it's MyApp
}
class MyApp extends StatelessWidget {             // MyApp is a stateless widget we are using
  @override
  Widget build(BuildContext context) {           // we are overriding the build method
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyIdiot(title:"Iam Ukku"),           // Here we are calling another class MyIdiot
    );
  }
}
class MyIdiot extends StatefulWidget {             //it's a statefulwidget
  MyIdiot({Key key,this.title}):super (key:key);    // constructor
  final String title;
  @override
  _MyIdiotState createState() => _MyIdiotState();

}

class _MyIdiotState extends State<MyIdiot> {           //its a tail of the original class, where the
  int _counter=0;
  int _score=0;
  int _temp1,_temp2,_temp3;
  void _gotIt1(){
    setState(() {
      var _ran= new Random();
      _temp1=_ran.nextInt(3);
      if(_temp1==1){
        _score=_score-2;
      }
      else if(_temp1==2){
        _score=_score+3;
      }
      else{
        _score=_score+1;
      }
    });
  }
  void _gotIt2(){
    setState(() {
      var _ran= new Random();
      _temp2=_ran.nextInt(3);
      if(_temp2==2){
        _score=_score-2;
      }
      else if(_temp2==0){
        _score=_score+3;
      }
      else{
        _score=_score+1;
      }


    });
  }
  void _gotIt3(){
    setState(() {
      var _ran= new Random();
      _temp3=_ran.nextInt(3);
      if(_temp3==0){
        _score=_score-2;
      }
      else if(_temp3==1){
        _score=_score+3;
      }
      else{
        _score=_score+1;
      }
    });
  }
  void _reset(){
    setState(() {
      _score=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(title: Text(widget.title,
        style: TextStyle(
          color:Colors.white,wordSpacing: 2.0,
          letterSpacing: 2.0,
        ),
      ),
        backgroundColor: Colors.pink,),*/
      body:Padding(padding: EdgeInsets.all(3.0),
        child:Container(
          decoration: BoxDecoration( borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(55.0),
            bottomRight: Radius.circular(55.0),
            topRight: Radius.circular(55.0),
            topLeft:Radius.circular(55.0),
          ),
            color: Colors.black,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //...........................for score ..........................................

              Padding(padding:EdgeInsets.only(top:20,bottom:19),
                child:Container(child:
                Text('RockPaperScissors',style: TextStyle(color: Colors.white,fontSize: 28,fontStyle: FontStyle.normal,
                ),
                  textAlign: TextAlign.center,),
                  decoration: BoxDecoration( borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(55.0),
                    bottomRight: Radius.circular(55.0),
                    topRight: Radius.circular(55.0),
                    topLeft:Radius.circular(55.0),
                  ),
                      color: Colors.black,border: Border.all(width: 2.0,color: Colors.white,)
                  ),
                  width: 700,
                  height: 40,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 25),
                child:Container(
                  child:Padding(padding: EdgeInsets.symmetric(),
                    child:Padding(padding:EdgeInsets.only(left:10.0),child:Text('Score = $_score',style: TextStyle(color: Colors.white,
                      fontSize: 20,fontStyle: FontStyle.normal,),
                      textDirection: TextDirection.ltr,
                      // textAlign: TextAlign.right,
                  ),
                    ),
                  ),
                  // alignment: Alignment(1.0, 1.0),
                  decoration: BoxDecoration( borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(55.0),
                    bottomRight: Radius.circular(55.0),
                    topRight: Radius.circular(55.0),
                    topLeft:Radius.circular(55.0),
                  ),
                      color: Colors.black,border: Border.all(width: 2.0,color: Colors.white,)
                  ),
                  width: 300,
                  margin: const EdgeInsets.all(10.0),
                ),
              ),
              /* Text(
                'Here is your name...Yohith',
                style: TextStyle(
                  color: Colors.black54,
                  letterSpacing: 1.0,
                ),
              ),
              Text(
                "Number of times you pressed the button is: $_counter",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 1.0,
                  fontSize: 10,
                ),
              ),*/
              Padding(padding: EdgeInsets.only(bottom: 1),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Icon(Icons.brightness_1,color:Colors.white,size:50),
                          decoration:BoxDecoration(border: Border.all(width: 2.0,color: Colors.white,)

                          ),),
                        RaisedButton(onPressed: _gotIt1,splashColor:Colors.black,
                          color: Colors.white,
                          child:const Text('ROCK',style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Icon(Icons.insert_drive_file,color:Colors.white,size:50),
                          decoration:BoxDecoration(border: Border.all(width: 2.0,color: Colors.white,)

                          ),),
                        RaisedButton(onPressed: _gotIt2,splashColor:Colors.black,
                          color: Colors.white,
                          child:const Text('PAPER',style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Icon(Icons.content_cut,color:Colors.white,size:50),
                          decoration:BoxDecoration(border: Border.all(width: 2.0,color: Colors.white,)

                          ),),

                        RaisedButton(onPressed: _gotIt3,splashColor:Colors.black,
                          color: Colors.white,
                          child:const Text('SCISSORS',style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],


                ),
              ),
              //RaisedButton(onPressed: _incrementor,
              //splashColor: Colors.blueAccent,
              //child: const Text('haha'),
              //elevation: 6.0,),
              Padding(padding: EdgeInsets.only(top:40),
                child: FloatingActionButton(onPressed: _reset,child: Text('RESET',
                  style: TextStyle(color: Colors.black),
                ),
                  backgroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

