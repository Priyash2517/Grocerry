import 'package:flutter/material.dart';

class EnglishVegetables extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('NSM Produts'),
        backgroundColor: Colors.green,

        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.add_shopping_cart),
          ),
        ],
      ),
      body:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text('English Vegetables',style: TextStyle(
          fontSize: 20.0
        ),),
        Image.asset(
          'images/english.jpeg',
        ), 
      ],
    ),
    );
  }
}

