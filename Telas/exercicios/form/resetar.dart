import 'package:flutter/material.dart';

void main(){
  runApp(const Inicializador());
}

class Inicializador extends StatelessWidget{
  const Inicializador({super.key});
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: ResetarFormulario()
    );
  }
}

class ResetarFormulario extends StatefulWidget{
  const ResetarFormulario({super.key});
  
  @override
  State<ResetarFormulario> createState() => _ResetarState();
}

class _ResetarState extends State<ResetarFormulario>{
  final _formKey = GlobalKey<FormState>();
  
  String _nome = '';
  
  @override
  Widget build(BuildContext context){
    

    
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          'Olá $_nome',
          style: TextStyle(
            color: Colors.white
          )
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: (){
            Navigator.pop(context);
          }
          
        )
      ),
      body: SafeArea(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Insira um nome valido";
                      }
                      return null;
                    },
                    onSaved: (value){
                      _nome = value!; 
                    },
                    decoration: InputDecoration(
                      label: Text('Digite seu nome: ')
                    )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        child: Text('Enviar'),
                        onPressed: (){
                          if(_formKey.currentState!.validate()){
                            _formKey.currentState!.save();
                          }
                          setState((){
                            this._nome;
                          });
                        },

                        
                      ),
                    ElevatedButton(
                      child: Text('Resetar'),
                      onPressed: (){
                        _formKey.currentState!.reset();
                        setState((){
                          this._nome = '';
                        });
                      }
                      
                      
                    )
                    ]
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