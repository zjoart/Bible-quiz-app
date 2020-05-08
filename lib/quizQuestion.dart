import 'package:flutter/material.dart';


var finalScore = 0;
var questionNumber = 0;
var quiz = new BibleQuiz();

class BibleQuiz{

  var questions = [
    "To whom did God give these commandments, engraved on stone tablets?",
    "Honour thy _____________.",
    "What is the common name given to the first four books of the New Testament?",
    "Which of these is NOT books in the New Testament?",
  ];


  var choices = [
    ["Peter", "Noah", "Moses", "Adam"],
    ["women and children", "body", "father and thy mother", "blessings"],
    ["the Revelations", "the Gospels", "the Acts", "the Synopsis"],
    ["Ephesians", "Hebrews", "Jude", "Joshua"],
  ];


  var correctAnswers = [
    "Moses", "father and thy mother", "the Gospels", "Joshua",
  ];
}

class Question extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return new QuestionState();
  }
}

class QuestionState extends State<Question> {

  Color colorToShow = Colors.blueAccent;
  Color right = Colors.green;

  Color btnColor1 = Colors.blueAccent;
  Color btnColor2 = Colors.blueAccent;
  Color btnColor3 = Colors.blueAccent;
  Color btnColor4 = Colors.blueAccent;

  Color wrong1 = Colors.red;
  Color wrong2 = Colors.red;
  Color wrong3 = Colors.red;
  Color wrong4 = Colors.red;






  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            title: new Text("Score: $finalScore",
              style: new TextStyle(
                  fontSize: 28.0, fontWeight: FontWeight.bold
              ),),
            centerTitle: true,
          ),

          body: new Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            child: new Column(
              children: <Widget>[
                new Padding(padding: EdgeInsets.all(20.0)),

                new Container(
                  alignment: Alignment.centerRight,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      new Text("Question ${questionNumber + 1} of ${quiz.questions.length}",
                        style: new TextStyle(
                            fontSize: 22.0
                        ),),

                    ],
                  ),
                ),

                new Padding(padding: EdgeInsets.all(10.0)),

                new Padding(padding: EdgeInsets.all(10.0)),

                new Text("Question ${questionNumber + 1} : ${quiz.questions[questionNumber]} ",
                  style: new TextStyle(
                    fontSize: 20.0,
                  ),),

                new Padding(padding: EdgeInsets.all(20.0)),

                new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[

                    //button 1
                    new MaterialButton(
                      // minWidth: 120.0,
                      height: 40.0,
                      color: btnColor1,
                      onPressed: (){
                        if(quiz.choices[questionNumber][1] == quiz.correctAnswers[questionNumber]){
                          print("Correct");
                          setState(() {
                            btnColor1 = right;
                          });
                          finalScore = finalScore +2;
                        }else {
                          print("Wrong");
                          setState(() {
                            btnColor1 = wrong1;

                          });

                        }
                      },
                      child: new Text(quiz.choices[questionNumber][0],
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    ),


                    //button 2
                    new MaterialButton(
                     // minWidth: 120.0,
                      height: 40.0,
                      color: btnColor2,
                      onPressed: (){

                        if(quiz.choices[questionNumber][1] == quiz.correctAnswers[questionNumber]){
                          print("Correct");
                          setState(() {
                            btnColor2 = right;

                          });
                          finalScore = finalScore +2;
                        }else{
                          print("Wrong");
                          setState(() {
                            btnColor2 = wrong2;

                          });
                        }
                      },
                      child: new Text(quiz.choices[questionNumber][1],
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    ),

                  ],
                ),

               // new Padding(padding: EdgeInsets.all(10.0)),

                new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[

                    //button 3
                    new MaterialButton(
                      // minWidth: 120.0,
                      height: 40.0,
                      color: btnColor3,
                      onPressed: (){

                        if(quiz.choices[questionNumber][2] == quiz.correctAnswers[questionNumber]){
                          print("Correct");
                          setState(() {
                            btnColor3 = right;

                          });
                          finalScore = finalScore +2;
                        }else{
                          print("Wrong");
                          setState(() {
                            btnColor3 = wrong3;

                          });
                        }

                      },
                      child: new Text(quiz.choices[questionNumber][2],
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    ),


                    //button 4

                    new MaterialButton(
                      // minWidth: 120.0,
                      height: 40.0,
                      color:  btnColor4,
                      onPressed: (){

                        if(quiz.choices[questionNumber][3] == quiz.correctAnswers[questionNumber]){
                          print("Correct");
                          setState(() {
                            btnColor4 = right;

                          });
                          finalScore = finalScore +2;
                        }else{
                          print("Wrong");
                          setState(() {
                            btnColor4 = wrong4;

                          });
                        }

                      },
                      child: new Text(quiz.choices[questionNumber][3],
                        style: new TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    ),


                  ],
                ),

                new Padding(padding: EdgeInsets.all(15.0)),

                new Container(
                    alignment: Alignment.bottomCenter,
                    child:  new MaterialButton(
                        minWidth: 100.0,
                        height: 40.0,
                        color: Colors.blue,
                        onPressed: updateQuestion,
                        child: new Text("Next",
                          style: new TextStyle(
                              fontSize: 18.0,
                              color: Colors.white
                          ),)
                    )
                ),

              ],
            ),
          ),

        )
    );
  }


  void resetQuiz(){
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }


  void updateQuestion(){
    setState(() {
      if(questionNumber == quiz.questions.length - 1){
        Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Summary(score: finalScore,)));

      }else{
        btnColor1 = Colors.blue;
        btnColor2 = Colors.blue;
        btnColor3 = Colors.blue;
        btnColor4 = Colors.blue;
        questionNumber++;
      }
    });
  }
}


class Summary extends StatelessWidget{
  final int score;
  Summary({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.green,

        body: Center(
          child: new Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                new Text("Your final Score: $score",
                  style: new TextStyle( color: Colors.white70,
                      fontSize: 35.0, fontWeight: FontWeight.bold
                  ),),

                new Padding(padding: EdgeInsets.all(30.0)),

                new MaterialButton(
                  color: Colors.red,
                  onPressed: (){
                    questionNumber = 0;
                    finalScore = 0;
                    Navigator.pop(context);
                  },
                  child: new Text("Reset Quiz",
                    style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white
                    ),),)

              ],
            ),
          ),
        ),


      ),
    );
  }


}
