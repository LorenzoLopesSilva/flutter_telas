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
  
  @override
  State<Tela> createState() => _TelaState();
}

class _TelaState extends State<Tela>{
  List<String> users = ['Lorenzo', 'Kauan', 'Rafa'];
  

  
  String nome = '{Nome}';
  
  void setNome(int index){
    setState((){
      nome = users[index];
    });
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('$nome'),
        backgroundColor: Colors.lightGreen
      ),
      body: Container(
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index){
            return Container(
              child: Column(
                children: [
                  Text(
                    users[index],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                    
                  
                  ),
                  Botao(index: index)
                  
                ]
              ),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.green
              ),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10)
            );
          }
        )
      )
    );
  }
  
}

class Botao extends StatelessWidget{
  final int index;
  const Botao({super.key, required this.index});
  
  @override
  Widget build(BuildContext context){
    final telaState = context.findAncestorStateOfType<_TelaState>();
    
    return Container(
      child: ElevatedButton(
       onPressed: (){
         telaState?.setNome(index);
       },
        child: Text('Selecionar')
      ),
      margin: EdgeInsets.all(15)
    );
    
  }
}