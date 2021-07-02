import 'package:flutter/material.dart';
import 'package:flutter_provider/provider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MyProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Text("${provider.name}"),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () async {
              provider.getFirstName();
              await Future.delayed(Duration.zero);
            },
            child: Container(
              color: Colors.greenAccent,
              width: 200,
              height: 50,
              child: Center(
                child: Text("Show First Name"),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () async {
              provider.getLastName();
              await Future.delayed(Duration.zero);
            },
            child: Container(
              color: Colors.greenAccent,
              width: 200,
              height: 50,
              child: Center(
                child: Text("Show Last Name"),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
