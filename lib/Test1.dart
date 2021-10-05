import 'dart:developer';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test1 extends StatefulWidget {
  @override
  _Test1State createState() => _Test1State();
}
class _Test1State extends State<Test1> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: Icon(Icons.menu),
        actions: [
          new Icon(Icons.ac_unit),
          new IconButton(
              icon: new Icon(Icons.access_alarm),
              onPressed: () {
                print('saed');
              }),
        ],
        title: new Text("saed"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.lightGreen,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'saed',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 40
                  ),
                  prefixIcon: Icon(Icons.access_alarm),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
