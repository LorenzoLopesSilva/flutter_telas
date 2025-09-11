import 'package:flutter/material.dart';

void main(){
  runApp(const Inicializador());
}

class Inicializador extends StatelessWidget{
  const Inicializador({super.key});
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: TelaInput()
    );
  }
}

class TelaInput extends StatefulWidget{
  const TelaInput({super.key});
  
  @override
  State<TelaInput> createState() => _TelaInputState();
}

class _TelaInputState extends State<TelaInput>{
  final _form = GlobalKey<FormState>();
  
  String _nome = '';
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Form(
              key: _form,
              child: Column(
                children: [
                  TextFormField(
                    onSaved: (value){
                      _nome = value!;
                    },
                    decoration: InputDecoration(
                      label: Text("Digite seu nome: "),
                    )
                   
                  ),
                  ElevatedButton(
                    onPressed: (){
                      _form.currentState!.save();
                      print(_nome);
                    },
                    child: Text("Enviar")
                  )
                  
                ]
              )
            )
          ]
        )
      )
    );
  }
}