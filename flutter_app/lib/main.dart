import 'package:flutter/material.dart';

void main(){
 runApp(MaterialApp(
   home: Home(),

   debugShowCheckedModeBanner: false,
    ));
  
  
}



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NASA"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(width: 3, color:Colors.indigo)
      ),
       child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,//alinhamento espaços iguais
       crossAxisAlignment: CrossAxisAlignment.center,//alinhamento de main centralizado
       children: <Widget> //filhos
      [

        Image.asset("imagens/img.png"),
         Text("A National Aeronautics and Space Administration "
             "ou Administração Nacional da Aeronáutica e Espaço"
             " é uma agência do Governo Federal dos Estados Unidos"
             " responsável pela pesquisa e desenvolvimento de tecnologias"
             " e programas de exploração espacial.",
         textAlign: TextAlign.center,
         style: TextStyle(
           fontSize: 16,
           fontWeight: FontWeight.bold,
           color: Colors.blueAccent,
          ),
         ),
         RaisedButton(
           child: Text("Saiba NASA ",
           style: TextStyle(
             color: Colors.black,
             fontSize: 17,
             fontWeight: FontWeight.w700,
            ),
           ) ,

            color:Colors.blueAccent,
            onPressed: (){},



         ),

        ]
      )
    ),  );
  }



}



 