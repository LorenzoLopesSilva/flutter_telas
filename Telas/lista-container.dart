import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  static List<String> tarefas = ['Estudar Flutter', 'Fazer exercicio', 'Assistir flime', 'Dormir'];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ListView(
            children: [
              for(String tarefa in tarefas)
                Container(
                  height: 100,
                  width: 200,
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.blue
                  ),
                  child: Text(
                    tarefa,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white
                    )
                  )
                )
              
            ]
          )
        )
      )
    );
  }
