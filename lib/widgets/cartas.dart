import 'package:flutter/material.dart';

class Cartas extends StatefulWidget {
  final String user_image;
  final String nombre;
  final String image;

  Cartas({this.user_image,this.image,this.nombre});
  @override
  _CartasState createState() => _CartasState();
}

class _CartasState extends State<Cartas> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(3.0),
                child: new Container(
                  child:new CircleAvatar(
                  backgroundImage: NetworkImage(widget.user_image),
                  ),
                ),
                height: 50.0,
                width: 50.0,
                decoration: new BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffee0979),Color(0xffff6a00)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                  ),
                  shape: BoxShape.circle
                ),

              ),
              Container(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(widget.nombre, style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    new Text('Otro, campo o campos', style: new TextStyle(color: Colors.grey),)
                  ],
                ),
              )
            ],
          ),
          new Image.asset(widget.image),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Container(
                child: Row(
                  children: <Widget>[
                    new IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: (){},
                  ),
                  new IconButton(
                    icon: Icon(Icons.chat_bubble_outline),
                    onPressed: (){},
                  ),
                  new IconButton(
                    icon: Icon(Icons.near_me),
                    onPressed: (){},
                  ),
                  ],
                )
              ),
              new Container(
                    child: new IconButton(
                      icon: new Icon(Icons.save_alt),
                      onPressed: (){},
                    ),
              ),
            ],
          ),
        new Container(
          padding: EdgeInsets.all(3.0),
          child: new Column(
            children: <Widget>[
               new Text('189.131 me gusta',style:new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
               new Text('Ver los 2.341 comentarios', style: new TextStyle(color: Colors.grey,fontSize: 12.0),)
            ],
          )
          ),
        new Container(
          padding: EdgeInsets.all(3.0),
          child: new Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 5.0),
                height: 28.0,
                width: 28.0,
                child: new CircleAvatar(
                      backgroundImage: NetworkImage(widget.user_image),
                    ),
              ),
              new Flexible(
                child:new TextField(
                  decoration: new InputDecoration.collapsed(
                    hintText: 'Añade un comentario'
                  ),
                )
              )
            ],
          ),
        )
        ],
      )
    );
  }
}