import 'package:flutter/material.dart';
import 'package:flutter_app/pages/game_page.dart';
import 'package:flutter_app/data/list.dart';
import 'package:flutter_app/controller/reset_game.dart';



main()=>runApp(new MaterialApp(
  home: new HomePage(),
));



class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Vocabulary"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
            onPressed: () {
              updateLists();
              Navigator.push(context, MaterialPageRoute(builder: (context) => GamePage()));
            },
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListOfWords(),
      ),
    );
  }
}

class ListOfWords extends StatefulWidget {
  @override
  State<ListOfWords> createState() {
    return ListState();
  }
}

class ListState extends State<ListOfWords>{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      reverse: false,
      //itemBuilder: (_,int index) => EachList(this.list[index].name, this.list[index].translation, this.list[index].using),
      itemCount: words.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: setColor(words[index].using),
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 10,
                  child: Icon(
                    Icons.directions_run,
                    color: Colors.blue,
                    size: 30.0,
                  )
              ),
              Expanded(
                  flex: 5,
                  child: Padding(padding: EdgeInsets.only(right: 15.0))
              ),
              Expanded(
                flex: 75,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(words[index].name, style: TextStyle(fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.7))),
                      SizedBox(height: 3.0),
                      Text(words[index].translation, style: TextStyle(
                          fontSize: 12.0, color: Colors.black.withOpacity(0.7)))
                    ]
                ),
              ),
              Expanded(
                flex: 10,
                child: Icon(
                    Icons.volume_up,
                    color: Colors.blue,
                    size: 20.0
                ),
              )
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}


