import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Tela());
  }
}

class Tela extends StatelessWidget {
  const Tela({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> nomes = ['Lorenzo', 'Rafa', 'Kauan'];

    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: nomes.length,
          itemBuilder: (context, index) {
            return Container(
              height: 70,
              color: Colors.indigo,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              child: Row(
                children: [
                  Text('$index', style: TextStyle(color: Colors.white)), 
                  Text(nomes[index], style: TextStyle(color: Colors.white))
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
            );
          },
        ),
      ),
    );
  }
}