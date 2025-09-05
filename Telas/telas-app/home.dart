class Home extends StatelessWidget{
  const Home({super.key});
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        
      ),
      body: Container(
        child: ListView(
          children: [
            GestureDetector(
              onTap: (){
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Tela())
                 
//                 );
              },
                child: Container(
                  child: Text(
                    'Widgets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22
                    )
                  ),
                  height: 80,
                  margin: EdgeInsets.only(bottom: 5),
                  color: Colors.blue,
                  alignment: Alignment.center
              )
            ),
            GestureDetector(
              onTap: () => print(''),
                child: Container(
                  child: Text(
                    'Widgets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22
                    )
                  ),
                  height: 80,
                  margin: EdgeInsets.only(bottom: 5),
                  color: Colors.blue,
                  alignment: Alignment.center
              )
            ),
            
            
          ]
        )
      )
    );
  }
}