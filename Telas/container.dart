
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
            child: Container(
//               height: MediaQuery.of(context).size.width * 0.7,
//               width: MediaQuery.of(context).size.height * 0.7,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border(
                  top: BorderSide(color: Colors.red, width: 3),
                  right: BorderSide(color: Colors.yellow, width: 3),
                  bottom: BorderSide(color: Colors.purple, width: 3),
                  left: BorderSide(color: Colors.orange, width: 5)
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
                ),
                boxShadow: [ BoxShadow(
                  color: Colors.black,
                  blurRadius: 8,
                  offset: Offset(2, 4)
                ),
                
                
               ],
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.indigo]
                )
              )
                    
              ),
            height: 100,
            width: MediaQuery.of(context).size.width * 1,
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(
                color: Colors.black,
                width: 3,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(20)
            )
          )
      )
    );
  }
}