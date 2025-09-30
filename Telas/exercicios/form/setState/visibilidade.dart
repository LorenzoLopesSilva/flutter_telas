import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Tela()
    );
  }
}

class Tela extends StatefulWidget{
  const Tela({super.key});
  
  @override
  State<Tela> createState() => _TelaState();
}

class _TelaState extends State<Tela>{
  bool _visivel = true;
  
  void visibilidade(){
    setState(() => _visivel = !_visivel);
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          'Visibilidade',
          style: TextStyle(color: Colors.white)
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (() => visibilidade()),
                  child: Container(
                    alignment: Alignment.center,
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.green[900],
                      borderRadius: BorderRadius.circular(10)

                    ),
                    child: Visibility(
                      visible: _visivel,
                      child: Text("Lorenzo Lopes", style: TextStyle(color: Colors.white))
                    )
                  )
                )
              ]
            )
          ]

        )
      )
    );
  }
}