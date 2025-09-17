import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FormFinal()
    );
  }
}

class FormFinal extends StatefulWidget{
  const FormFinal({super.key});
  
  @override
  State<FormFinal> createState() => _FormFinalState();
}

class _FormFinalState extends State<FormFinal>{
  final _formKey = GlobalKey<FormState>();
  
  String _nome = '';
  String _email = '';
  String _senha = '';
  
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
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Digite um nome!";
                      }
                      return null;
                    },
                    onSaved: (value){
                      _nome = value!;
                    },
                    decoration: InputDecoration(
                      label: Text("Digite seu nome: "),
                      fillColor: Colors.blue[100],
                      filled: true
                    )
                  ),
                  TextFormField(
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Digite o email!";
                      }
                      else if(value.contains("@") != true){
                        return "O email precisa de @!";
                      }
                      return null;
                    },
                    onSaved: (value){
                      _email = value!;
                    },
                    decoration: InputDecoration(
                      label: Text("Digite seu email: "),
                      fillColor: Colors.blue[100],
                      filled: true
                      
                    )
                  ),
                  TextFormField(
                    obscureText: true,
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Digite sua senha!";
                      }
                      else if(value.length < 8){
                        return "A senha precisa ter no minimo 8 caracteres";
                      }
                      return null;
                    },
                    onSaved: (value){
                      _senha = value!;
                    },
                    decoration: InputDecoration(
                      label: Text("Digite sua senha: "),
                      fillColor: Colors.blue[100],
                      filled: true
                      
                    )
                  ),

                  Row(
                    children: [
                      FilledButton(
                        child: Text("Enviar", style: TextStyle(color: Colors.white)),
                        onPressed: (){
                          if(_formKey.currentState!.validate()){
                            _formKey.currentState!.save();
                          }
                          setState((){
                            _nome;
                            _email;
                            _senha;
                          });

                        },
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.indigo,
                          fixedSize: Size(150, 50)
                        )
                        
                      )
                    ]
                  )
                ] 
              )
            ),
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nome: $_nome', style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text('Email: $_email', style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text('Senha: $_senha', style: TextStyle(color: Colors.white, fontSize: 20))
                ]
                ),
              decoration: BoxDecoration(
                color: Colors.indigo[900],
                borderRadius: BorderRadius.circular(30),
              ),
              width: double.infinity,
              height: 150,
              margin: EdgeInsets.fromLTRB(10, 80, 10, 0),
              padding: EdgeInsets.all(10)
            )
         ]   
        )  
      )
    );
  }
  
}