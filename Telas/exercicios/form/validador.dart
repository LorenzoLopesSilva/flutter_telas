import 'package:flutter/material.dart';

void main(){
  runApp(const Inicializador());
}

class Inicializador extends StatelessWidget{
  const Inicializador({super.key});
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Validador()
    );
  }
}

class Validador extends StatefulWidget{
  const Validador({super.key});
  
  State<Validador> createState() => _ValidadorState();
}

class _ValidadorState extends State<Validador>{
  
  final _formKey = GlobalKey<FormState>();
  
  String _email = '';
  
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
                  onSaved: (value){
                    _email = value!;
                  },
                  decoration: InputDecoration(
                    label: Text("Email: ")
                  ),
                  validator: (value){
                    if(value?.contains("@") == false){
                      return("Email necessita de @");
                    }
                    return null;
                 
                  }
                  
                ),
                ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      _formKey.currentState!.save();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Seu email é: $_email"))
                      );
                    }
                    
                  },
                  child: Text("Enviar")
                )
              ]
          )
        )
      )
    );
  }
}