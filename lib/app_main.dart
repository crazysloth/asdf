import 'package:flutter/material.dart';
import 'package:implude511_2/bottom_page/favorite.dart';
import 'package:implude511_2/bottom_page/order_record.dart';
import 'package:implude511_2/bottom_page/profile.dart';

import 'bottom_page/home.dart';
import 'bottom_page/search.dart';

class AppMain extends StatefulWidget {
  const AppMain({Key? key}) : super(key: key);

  @override
  State<AppMain> createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {
  int _selectedIndex = 0;
  List _pages = [Home(), Favorite(), Search(), OrderRecord(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("주소",
      //       style: TextStyle(
      //           color: Colors.black
      //       )
      //   ),
      //   backgroundColor: Colors.white,
      //   leading: Icon(Icons.notifications_none, color: Colors.black, size: 20),
      //   centerTitle: true,
      //   elevation: 0.0,
      // ),
      // body: Column(
      //   children: [
      //     Container(
      //       height: 100,
      //       width: MediaQuery.of(context).size.width - 15,
      //       decoration: BoxDecoration(
      //           color: Colors.red,
      //           borderRadius: BorderRadius.circular(10)
      //       ),
      //       child: Text("광고배너"),
      //     ),
      //   ],
      // ),
      body: Container(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '홈'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '찜'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: '검색'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt),
              label: '주문내역'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '마이요기요'
          )
        ],
      ),
    );
  }
}
