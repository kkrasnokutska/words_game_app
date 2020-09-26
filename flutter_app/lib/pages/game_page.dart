import 'package:flutter/material.dart';
import 'package:flutter_app/pages/result_page.dart';
import 'package:flutter_app/controller/filter_words.dart';
import 'package:flutter_app/data/list.dart';
import 'package:flutter_app/controller/rest_words.dart';
import 'package:flutter_app/controller/check_word.dart';

class GamePage extends StatefulWidget{
  @override
  State<GamePage> createState() {
    return GameState();
  }
}

class GameState extends State<GamePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Find a Word'),
      ),
      body: Column(
          children: <Widget> [
            SizedBox(height: 80.0),
            Center(
            child: Container(
              color: Color.fromRGBO(240, 240, 240, 1.0),
              padding: EdgeInsets.fromLTRB(70.0, 15.0, 70.0, 15.0),
              child: Text(
                finalList[currentNumber].name,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.7)
                ),
              ),
            ),
            ),
            SizedBox(height: 40.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget> [
                      Icon(
                        Icons.directions_run,
                        size: 40.0,
                        color: iconColor[0],
                      ),
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            changeColor(0);
                            Future.delayed(const Duration(milliseconds: 300), () {
                              setState(() {
                                if (checkWords(0)) {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));
                                }
                              });

                            });
                          });
                        },
                        child: Text(
                          restWords[0].translation,
                          style: TextStyle(fontSize: 18.0, color: Colors.black.withOpacity(0.7)),
                        ),
                        color: widgetColor[0],
                        padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    children: <Widget> [
                      Icon(
                        Icons.ac_unit,
                        size: 40.0,
                        color: iconColor[1],
                      ),
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            changeColor(1);
                            Future.delayed(const Duration(milliseconds: 300), () {
                              setState(() {
                                if (checkWords(1)) {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));
                                }
                              });

                            });
                          });
                        },
                        child: Text(
                          restWords[1].translation,
                          style: TextStyle(fontSize: 18.0, color: Colors.black.withOpacity(0.7)),
                        ),
                        color: widgetColor[1],
                        padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                      ),
                    ],
                  ),
                ],
              ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget> [
                    Icon(
                      Icons.airport_shuttle,
                      size: 40.0,
                      color: iconColor[2],
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          changeColor(2);
                          Future.delayed(const Duration(milliseconds: 300), () {
                            setState(() {
                              if (checkWords(2)) {

                                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));
                              }
                            });

                          });
                        });
                      },
                      child: Text(
                        restWords[2].translation,
                        style: TextStyle(fontSize: 18.0, color: Colors.black.withOpacity(0.7)),
                      ),
                      color: widgetColor[2],
                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                    ),
                  ],
                ),
                    SizedBox(width: 20.0),
                Column(
                  children: <Widget> [
                    Icon(
                      Icons.extension,
                      size: 40.0,
                      color: iconColor[3],
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          changeColor(3);
                          Future.delayed(const Duration(milliseconds: 300), () {
                            setState(() {
                              if (checkWords(3)) {

                                Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));
                              }
                            });

                          });
                        });
                      },
                      child: Text(
                        restWords[3].translation,
                        style: TextStyle(fontSize: 18.0, color: Colors.black.withOpacity(0.7)),
                      ),
                      color: widgetColor[3],
                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                    ),
                  ],
                ),
              ],
            ),

          ],
        ),
    );
  }
}
