import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Saed extends StatefulWidget {
  @override
  _SaedState createState() {
    return _SaedState();
  }
}

class _SaedState extends State<Saed> {
  int counter = 2;

  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: IconButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                icon: Icon(Icons.add),
              ),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text('$counter',style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Container(
              child: IconButton(onPressed: () { setState(() {
                counter--;
              });}, icon: Icon(Icons.remove)),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
