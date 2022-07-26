import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            addAutomaticKeepAlives: false,
            // scrollDirection: Axis.vertical,// cuộn theo hướng đứng hoặc ngang
            reverse: true,// trả về true thì danh sách list view sẽ xếp từ dưới lên, false thì ngược lại
            children: [
              Container(
                height: 90,
                color: Colors.blue,
              ),
              Container(
                height: 30,
                color: Colors.black,
              ),
              Container(
                height: 30,
                color: Colors.green,
              )
            ],
          ),
        ),
      ),

    );
  }
}
