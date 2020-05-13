import 'package:flutter/material.dart';
var scorenum = 0;
class ScorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.home,color: Colors.black,),
                Expanded(
                            child: Center(
                    child: Text(
                      "QUIZ - Test your knowledge",
                      style: TextStyle(
                        fontSize: 20,
                        wordSpacing: 10,
                        letterSpacing: 3, 
                        color: Colors.black,
                        ),
                        
                        ),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.black12,
              
              ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Expanded(child: Center(child: Text("Your score is "+scorenum.toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: "Roboto"  ),)))

        ],
        
        ),      
      ),
    );
  }
}