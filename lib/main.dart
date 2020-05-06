import 'package:flutter/material.dart';
import './quizQuestion.dart';


void main(){
  runApp(
      new MaterialApp(
        home: new BibleQuiz(),
      )
  );
}

class BibleQuiz extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new AnimalQuizState();
  }
}

class AnimalQuizState extends State<BibleQuiz>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Bible Quiz", style: TextStyle(fontSize: 20.0, fontWeight:  FontWeight.w500)),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),


      body: new Container(
        margin: const EdgeInsets.all(15.0),

        child: new Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new MaterialButton(
                height: 50.0,
                color: Colors.green,
                onPressed: startQuiz,
                child: new Text("Start Bible Quiz",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),)
            )
          ],
        ),
      ),


    );
  }

  void startQuiz(){
    setState(() {
      Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Question()));
    });
  }
}

