import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("마이요기요",
          style: TextStyle(
            color: Colors.black
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(Icons.notifications_none, color: Colors.black,),
        actions: [
          IconButton(
            icon: Icon(Icons.settings_outlined, color: Colors.black,),
            onPressed: () {

            },
          ),
        ],
        elevation: 0.0,
      ),
    );
  }
}
