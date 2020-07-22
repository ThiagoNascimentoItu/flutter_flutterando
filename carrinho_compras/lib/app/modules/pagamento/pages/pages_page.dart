import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'pages_controller.dart';

class PagesPage extends StatefulWidget {
  final String title;
  const PagesPage({Key key, this.title = "Pages"}) : super(key: key);

  @override
  _PagesPageState createState() => _PagesPageState();
}

class _PagesPageState extends ModularState<PagesPage, PagesController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
