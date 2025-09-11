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

class TelaInput extends StatelessWidget{
  const TelaInput({super.key});
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: (){
            Navigator.pop(context);
          }
          
        )
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Digite seu nome'
                      )
                    )
                  ]
                )
              ),
              
              Formulario()
            ]
          )
        )
      )
    );
  }
}

class Formulario extends StatefulWidget{
  const Formulario({super.key});
  
  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario>{
  final _textValue = GlobalKey<FormState>();
  
  String _valor = '';
  
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Form(
          key: _textValue,
          child: Column(
            children: [
              TextFormField(
                onSaved: (value){
                  _valor = value!;
                },
                decoration: InputDecoration(
                  label: Text('Digite seu username: ')
                )
              ),
              ElevatedButton(
                onPressed: (){
                  _textValue.currentState!.save();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Olá $_valor"))
                  );
                },
                child: Text('enviar')
              )
            ]
          )
        )
      ]
    );
  }
}