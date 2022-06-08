import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("주소",
          style: TextStyle(
            color: Colors.black
          ),
        ),
        backgroundColor: Colors.white,
        leading: Icon(Icons.notifications_none, color: Colors.black),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width - 15,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Text("광고배너"),
            ),
          ],
        ),
      ),
    );
  }
}
