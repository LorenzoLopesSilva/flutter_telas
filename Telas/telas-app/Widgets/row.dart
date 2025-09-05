import 'package:flutter/material.dart';

class TelaRow extends StatelessWidget {
  const TelaRow({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> nomes = ['Lorenzo', 'Rafa', 'Kauan'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900]
      ),
      body: Container(
        child: ListView.builder(
          itemCount: nomes.length,
          itemBuilder: (context, index) {
            return Container(
              height: 70,
              color: Colors.indigo,
              margin: EdgeInsets.only(bottom: 5),
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