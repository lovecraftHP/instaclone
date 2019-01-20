import 'package:flutter/material.dart';

import 'package:practica_1/models/posts.dart';
import 'package:practica_1/widgets/cartas.dart';
class MainPageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.0),
      child: new ListView.builder(
        itemCount: postData.length,
        itemBuilder: (BuildContext context, int i)=>new Container(
          padding: EdgeInsets.only(bottom: 8.0),
            child: new Cartas(user_image: postData[i].user.image,nombre: postData[i].user.name,image: postData[i].image,)
        )
      )
    );
  }
}