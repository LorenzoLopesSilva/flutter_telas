import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TelaPrincipal()
    );
  }
}

class TelaPrincipal extends StatefulWidget{
  const TelaPrincipal({super.key});
  
  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal>{
  int quantClique = 0;
  
  void somar(){
    setState((){
      quantClique++;
    });
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador: $quantClique'),
        backgroundColor: Colors.grey
      ),
      body: Center(
        child: Botao(),
      ),
    );
  }
}

class Botao extends StatelessWidget{
  const Botao({super.key});
  
  @override
  Widget build(BuildContext context){
    final _TelaPrincipalState? telaPrincipalState = context.findAncestorStateOfType<_TelaPrincipalState>();
    return Container(
      child: ElevatedButton(
        onPressed: telaPrincipalState?.somar,
        child: const Text('+')
      )
    );
  }
}