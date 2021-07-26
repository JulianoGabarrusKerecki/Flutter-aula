
import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: Tela1,
  ));

}

class Tela1 extends StatelessWidget {
  const Tela1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.indigoAccent,
      ),

      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(padding: EdgeInsets.all(10),
              child: Image.asset("imagens/nasa"),)
          ],
        ) ,
      ),
    );

