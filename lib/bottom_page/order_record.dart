import 'package:flutter/material.dart';

class OrderRecord extends StatefulWidget {
  const OrderRecord({Key? key}) : super(key: key);

  @override
  State<OrderRecord> createState() => _OrderRecordState();
}

class _OrderRecordState extends State<OrderRecord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("회원 주문내역",
          style: TextStyle(
            color: Colors.black
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
