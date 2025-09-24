import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: TelaExpanded());
  }
}

class TelaExpanded extends StatelessWidget {
  const TelaExpanded({super.key});

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
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple
                      ),
                      child: Text('Container 1')
                    ),
                  ),
                  Container(
                    height: 50,
                    child: Text('Container 2'),
                    decoration: BoxDecoration(color:Colors.amber)
                  ),
                  Container(
                    height: 50,
                    child: Text('Container 3'),
                    decoration: BoxDecoration(color:Colors.blueGrey)
                  )
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(color: Colors.amberAccent),
                      child: Text("Container 4")
                    )
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(color:Colors.blue),
                      child: Text('Container 5')
                    )
                  )
                ]
              )
            ]
          )
        )
      )
    );
  }
}