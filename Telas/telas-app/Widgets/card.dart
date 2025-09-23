import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: TelaCard());
  }
}

class TelaCard extends StatelessWidget {
  const TelaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Card(
              color: Colors.green[900],
              shadowColor: Colors.cyan,
//               surfaceTintColor: Colors.green,//só revelado sem o color
              borderOnForeground: true,
              elevation: 10,
              margin: EdgeInsets.all(30),
              clipBehavior: Clip.hardEdge,
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 100,
                child: Text("CARD", style: TextStyle(color: Colors.white)),
                
              ),
            ),
            Card.outlined(
//               color: Colors.indigo,
              shadowColor: Colors.blue,
              elevation: 3,
              borderOnForeground: false,
              
              
              child: Container(
                width: 200,
                height: 100
              )
            )
          ],
        ),
      ),
    );
  }
}