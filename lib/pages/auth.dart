import 'package:flutter/material.dart';

import 'package:practica_1/widgets/button.dart';
import 'package:practica_1/pages/home.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  GlobalKey <FormState> _formKey = GlobalKey<FormState>();
  String _email;
  String _passwd;

  void _login(){
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      print('Login -> Email:$_email\nPass: $_passwd');
      Navigator.of(context).push(
        new MaterialPageRoute(
          builder: (BuildContext context) => new HomePage()
        )
      );
    }else{
      return;
    }
  }
  Widget _campos() {
    return Form(
      key: _formKey,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
              child: new TextFormField(
            decoration: new InputDecoration(
              labelText: 'Email',
              filled: true,
              fillColor: Colors.white,
            ),
            validator: (value){
              if(value.length <= 0){
                return 'Porfavor ingrese un email valido';
              }
            },
            onSaved: (value)=> value.isNotEmpty?_email=value:null,
          )
        ),
          new SizedBox(
            height: 8.0,
          ),
          new Container(
              child: new TextFormField(
            decoration: new InputDecoration(
                labelText: 'Password', fillColor: Colors.white, filled: true),
                obscureText: true,
                onSaved: (value)=> value.isNotEmpty?_passwd=value:null,
                validator: (value){
                  if(value.length<=0){
                    return 'Ingrese la contraseña';
                  }
                },
            )
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: GestureDetector(
          onTap: (){
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: new Container(
          decoration: new BoxDecoration(
                gradient: new LinearGradient(
                  colors: [Color(0xffee0979), Color(0xffff6a00)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)
                  ),
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: new ListView(
              children: <Widget>[
                new Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 50.0),
                  child: Text('InstaJuan',
                      style: new TextStyle(
                          fontFamily: 'Insta',
                          fontSize: 40.0, 
                          color: Colors.white)),
                ),
                new SizedBox(
                  height: 80.0,
                ),
                _campos(),
                new SizedBox(height: 20.0,),
                new GestureDetector(
                  onTap: (){
                    _login();
                  },
                  child: new Button(text: 'Ingresar',),
                )
          ],
      ),
    ),
    )
  );
  }
}
