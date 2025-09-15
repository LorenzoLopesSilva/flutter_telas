import 'package:flutter/material.dart';

void main(){
  runApp(const Inicializador());
}

class Inicializador extends StatelessWidget{
  const Inicializador({super.key});
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: FormDuplo()
    );
  }
}

class FormDuplo extends StatefulWidget{
  const FormDuplo({super.key});
  
  @override
  State<FormDuplo> createState() => _FormDuploState();
  
}

class _FormDuploState extends State<FormDuplo>{
  final _formKey = GlobalKey<FormState>();
  
  String _nome = '';
  String _idade = '';
  
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
      body: Container(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value){
                  if(value == null || value.isEmpty ){
                    return("Digite um nome.");
                  }
                  return null;
                },
                onSaved: (value){
                  _nome = value!;
                },
                decoration: InputDecoration(
                  label: Text('Nome')
                )
                
              ),
              TextFormField(
                validator: (value){
                  if(value == null || value.isEmpty){
                    return("Digite uma idade valida.");
                  }
                  return null;
                },
                onSaved: (value){
                  _idade = value!;
                },
                decoration: InputDecoration(
                  label: Text('Idade')
              )
              ),
              ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    _formKey.currentState!.save();
                    
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(
                        'Nome: $_nome\nIdade: $_idade'
                      ))
                    );
                  }
                },
                child: Text('Enviar')
              )

              
            ]
          )
        )
      )
    );
  }
}