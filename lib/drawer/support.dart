import 'package:flutter/material.dart';

class support extends StatelessWidget {
  final String title;
  
  support(this.title);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
        backgroundColor: Colors.green,
      ),
      body:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image.asset(
          'images/contact.jpeg',fit: BoxFit.cover,
        ),
        new Center(
          child: new Text(title),
        ),
      ],
    ),
    );
  }
}