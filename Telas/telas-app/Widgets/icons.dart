import 'package:flutter/material.dart';

void main(){
  runApp(const Inicializador());
}

class Inicializador extends StatelessWidget{
  const Inicializador({super.key});
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Icones()
    );
  }
}

class Icones extends StatelessWidget{
  const Icones({super.key});
  
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.blue,
                  size: 40
                ),
                Icon(
                  Icons.account_circle,
                  color: Colors.black,
                  size: 40
                ),
                Icon(
                  Icons.add_circle,
                  color: Colors.red[900],
                  size: 40
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.green,
                  size: 40
                ),
                 Icon(
                  Icons.bookmark_outline,
                  color: Colors.yellow,
                  size: 40
                ),
                 Icon(
                  Icons.camera_alt,
                  color: Colors.purple,
                  size: 40
                ),
                 Icon(
                  Icons.chat_outlined,
                  color: Colors.orange,
                  size: 40
                ),
              ]
            ),
            
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.circle_outlined,
                  color: Colors.red,
                  size: 40
                ),
                Icon(
                  Icons.circle_sharp,
                  color: Colors.green[800],
                  size: 40
                ),
                Icon(
                  Icons.clear,
                  color: Colors.red,
                  size: 40
                ),
                Icon(
                  Icons.content_copy,
                  color: Colors.pink,
                  size: 40
                ),
                 Icon(
                  Icons.content_paste,
                  color: Colors.purple[900],
                  size: 40
                ),
                 Icon(
                  Icons.fingerprint,
                  color: Colors.black,
                  size: 40
                ),
                 Icon(
                  Icons.folder,
                  color: Colors.indigo,
                  size: 40
                ),
              ]
            ),

            
            
            
          ]
        )
      )
    );
  }
}