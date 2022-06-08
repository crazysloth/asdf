import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              width: MediaQuery.of(context).size.width - 30,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,

                  hintText: "가게나 메뉴로 검색해보세요",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
