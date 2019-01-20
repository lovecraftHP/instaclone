import 'package:flutter/material.dart';

import 'pages/auth.dart';
class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new AuthPage(),
    );
  }
}