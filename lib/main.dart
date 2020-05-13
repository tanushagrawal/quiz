import 'package:flutter/material.dart';
import 'score-page.dart';
void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<List> questions=[["Is Bombay the capital of India","False"],["Is Man Mohan Singh the Prime minister of India","False"],["Is hydrebad the capital of Telangana","True"]];
  List<Widget> score = [
                
                ];
  var question_number = 0;              
  void onClick(var ans){
               setState(() {
                 if(questions[question_number][1]==ans){
                   score.add(Icon(Icons.check,color: Colors.green,));
                  }
                 else{
                   score.add(Icon(Icons.close,color:Colors.red));

                 } 
                 if (question_number <questions.length){
                 question_number = question_number + 1;
                 }
                 if (questions.length ==question_number){
                   scorenum = 10;
                   runApp(ScorePage());
                 }
               });

  }              
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        left: true,
        top: true,
        right: true,
        bottom: false,
        // minimum: const EdgeInsets.all(16.0),
              child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.home,color: Colors.purple[800],),
                  Expanded(
                              child: Center(
                      child: Text(
                        "QUIZ - Test your knowledge",
                        style: TextStyle(
                          fontSize: 20,
                          wordSpacing: 5,
                          letterSpacing: 2, 
                          color: Colors.purple[800],
                          fontWeight: FontWeight.bold,
                          fontFamily: "Cosmic Sans"
                          ),
                          
                          ),
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.yellowAccent[700],
                ),
                
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child: Padding(
                       padding: const EdgeInsets.all(0),
                       child: RichText(
                         text:TextSpan(
                           text:"Question Number  :  ",
                           style:TextStyle(
                             fontSize: 20,
                             fontWeight: FontWeight.bold,
                             letterSpacing: 1,
                             wordSpacing: 1,
                             color: Colors.black,
                             ),
                        children: <TextSpan>[
                          TextSpan(text: (question_number+1).toString(),style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red) ),
                        ],
                       ),
                       ),
                       //Text("Question Number  "+(question_number+1).toString(),style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1,wordSpacing: 1)),
                  ),
                ),
               Center(
                  child: Padding(
                       padding: const EdgeInsets.all(0),
                       child: Text("____________________",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,)),
                  ),
                ),
              
                 Center(
                  
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(questions[question_number][0],style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,letterSpacing: 3,wordSpacing: 5)),
                  ),
                ),
              
              SizedBox(height: 100,),
              Padding(

                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(onPressed:(){
                  onClick("True");
                } ,child: Text("True"),
                color: Colors.green[500],
                padding: EdgeInsets.fromLTRB(100, 20, 100, 20)
                ),
              ),
               Padding(
                
                padding: const EdgeInsets.all(20),
                child: RaisedButton(onPressed: (){
                  onClick("False");
                },child: Text("False",),
                color: Colors.red,
                padding: EdgeInsets.fromLTRB(100, 20, 100, 20)
                ),
              ),
              SizedBox(height: 50,),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: score,
              )
            ],
          ),
        ),

        ),
      ),
       );
  }
}