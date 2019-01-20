import 'package:flutter/material.dart';

import 'package:practica_1/pages/mainPage.dart';
import 'package:practica_1/pages/notification.dart';
import 'package:practica_1/pages/plus.dart';
import 'package:practica_1/pages/profile.dart';
import 'package:practica_1/pages/search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {//aca es Single, aunque creo que da igual si lo pongo con Ticker solamente
  TabController _tabController;

  @override
    void initState() {
      super.initState();
      _tabController = TabController(
        length: 5,
        vsync: this,//el controlador debe de estar dentro del init state, de no, esto da error
        initialIndex: 0
      );
    }

  final Widget _appBar=new AppBar(
        leading: IconButton(
          icon: Icon(Icons.camera_alt),
          color: Colors.black,
          iconSize: 30.0,
          onPressed: (){},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 30.0,
            color: Colors.black,
            onPressed: (){},
          )
        ],
        centerTitle: true,
        title: new Text('Instajuan', style: new TextStyle(fontFamily: 'Insta', color: Colors.black, fontSize: 25.0),),
        backgroundColor: Colors.white,
      );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _appBar,
      bottomNavigationBar: new TabBar(

        controller: _tabController,
          tabs: <Widget>[
            new Tab(
              icon: Icon(Icons.home, color: Colors.black,),
            ),
            new Tab(
              icon: Icon(Icons.search,color: Colors.black),
            ),
            new Tab(
              icon: Icon(Icons.star_border,color: Colors.black),
            ),
            new Tab(
              icon: Icon(Icons.favorite_border,color: Colors.black),
            ),
            new Tab(
              icon: Icon(Icons.person_outline,color: Colors.black),
            )
          ],
        ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new MainPageHome(),
          new SearchPage(),
          new PlusPage(),
          new NotificationPage(),
          new ProfilePage()
        ],
      ),
    );
  }
}