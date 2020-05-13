import 'package:flutter/material.dart';
var scorenum = 0;
var q_numn =0;
class ScorePage extends StatelessWidget {
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
                
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Expanded(child: Center(child: Text("Your score is  "+scorenum.toString()+" / "+q_numn.toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: "Roboto"  ),)))

        ],
        
        ),      
      ),
    ),
    );
  }
}