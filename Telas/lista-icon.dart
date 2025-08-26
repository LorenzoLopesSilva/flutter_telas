import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  static List<String> tarefas = ['Estudar Flutter', 'Fazer exercicio', 'Assistir flime'];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ListView(
            children: [
              for(String tarefa in tarefas)
                ListTile(
                  leading: Icon(Icons.task),
                  title: Text(tarefa),
                  onTap: (){
                    print(tarefa);
                  }
                  
                  
                )
              
            ]
          )
        )
      )
    );
  }
}