import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  Widget build(BuildContext context){
    return MaterialApp(
      home: Tela()
    );
  }
}

class Tela extends StatelessWidget{
  const Tela({super.key});
  
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text('Modelo Tela')
      )
    );
  }
}