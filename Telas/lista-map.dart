import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Tela()
    );
  }
}

class Tela extends StatefulWidget{
  const Tela({super.key});
  
  State<Tela> createState() => _TelaState();
}

class _TelaState extends State<Tela>{
  List<Map<String, dynamic>> users = [
    {'nome': 'Lorenzo', 'email': 'lorenzo.lopes0808@gmail.com', 'idade': 19},
    {'nome': 'Ingrid', 'email': 'ingrid@email.com', 'idade': 17},
    {'nome': 'Rafael', 'email': 'rafa@email.com', 'idade': 18},
  ];
  

  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: () {print("Nome: ${users[index]['nome']} \nIdade: ${users[index]['idade']} \nEmail: ${users[index]['email']} ");},
              child: Container(
                height: 70,
                width: 100,
                margin: EdgeInsets.all(5),
                child: Text(
                  users[index]['nome'],
                  style: TextStyle(
                    color: Colors.white
                  )
                ),
                alignment: Alignment.center,
                color: Colors.purple
                
              )
            );
            
          }
        )
      )
    );
  }
}