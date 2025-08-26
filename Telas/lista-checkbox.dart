import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Tela()
    );
  }
}

class Tela extends StatefulWidget{
  const Tela({super.key});
  
  State<Tela> createState() => _TelaState();
}

class _TelaState extends State<Tela>{
  List<String> compras = ['Leite', 'Pão', 'Café'];
  
  List<bool> marcados = [];
  
  @override
  void initState(){
    super.initState();
    marcados = List.filled(compras.length, false);
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: compras.length,
          itemBuilder: (context, index){
            return CheckboxListTile(
              
              title: Text(compras[index]),
              value: marcados[index],
              onChanged: (bool? valor){
                setState((){
                  marcados[index] = valor ?? false;
                });
              }
            );
          }
        )
      )
    );
  }