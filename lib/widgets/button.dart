import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;

  Button({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      //definiendo las dimensiones del boton
      height: 50.0,
      width: 180.0,
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.circular(30.0),// es border radiuis no shape
        gradient: LinearGradient(
          colors: [
            Color (0xffee0979), Color(0xffff6a00)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
        boxShadow: [//esto lleva una serie de elementos
          new BoxShadow(
            //el color de la sombra
            color: Colors.black26,
            offset: new Offset(10.0,10.0),//ubicacion de la sombra
            blurRadius: 30.0// el difuminado
          )
        ]
      ),
      child: new Center(
        child: new Text(text,style: new TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),),
      )
    );
  }
}