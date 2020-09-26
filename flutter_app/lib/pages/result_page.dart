import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/controller/reset_game.dart';
import 'package:flutter_app/controller/check_word.dart';


main()=>runApp(new MaterialApp(
  home: new ResultPage(),
));



class ResultPage extends StatefulWidget{
  @override
  State<ResultPage> createState() {
    return ResultState();
  }
}

class ResultState extends State<ResultPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text (
          'Result',
          style: TextStyle(
            color: Colors.white,
          )
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  setText(progress),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                ),
              ),
              SizedBox(height: 20),
              FlatButton(
                child: Text(
                  'Back to the main page',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                color: Colors.blue,
                onPressed: () {
                  progress = 0;
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
              )
            ],
          ),
        ),

      ),
    );
  }
}



