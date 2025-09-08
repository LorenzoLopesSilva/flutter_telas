import 'package:flutter/material.dart';

class Imagem extends StatelessWidget{
  const Imagem({super.key});
  
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
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              alignment: Alignment.center,
//               height: MediaQuery.of(context).size.height * 0.9,
              child: Image.network(
                "https://media.cdn.adultswim.com/uploads/20250516/thumbnails/2_25516145578-RAM-S08E03-1920x1080.png",
              fit: BoxFit.cover,
                color: Colors.green,
                colorBlendMode: BlendMode.color
              ),


            )
          ]
        )
      )
    );
  }
}