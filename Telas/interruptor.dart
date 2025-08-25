import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  Widget build(BuildContext context){
    return MaterialApp(
      home: Interruptor()
    );
  }
}

class Interruptor extends StatefulWidget{
  const Interruptor({super.key});
  
  State<Interruptor> createState() => _InterruptorState();                                                                                              
}

class _InterruptorState extends State<Interruptor>{
  Color cor = Colors.white;
  bool isDark = false;
  
  void interruptor(){
    if(isDark){
      setState((){
        cor = Colors.white;
        isDark = false;
      });
    }
    else{
      setState((){
        cor = Colors.black;
        isDark = true;
      });
    }
  }
  
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: interruptor,
          child: Text("Interruptor")
        ),
      ),
      backgroundColor: cor
    );
  }
  
  
}