import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandedDemo extends StatefulWidget {
  const ExpandedDemo({Key? key}) : super(key: key);

  @override
  State<ExpandedDemo> createState() => _ExpandedDemoState();
}

class _ExpandedDemoState extends State<ExpandedDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                height: 50,
              //   child: Stack(
              //     alignment: AlignmentDirectional.bottomStart,
              //     children: [
              //       Expanded(
              //           flex: 1,
              //           child: Container(
              //             color: Colors.green,)),
              //       Expanded(  // nếu sử dụng expanded trong Stack thì nó sẽ flex widget con xếp sau mặc định theo width và height của cha
              //         flex: 3,
              //           child: Container(
              //             color: Colors.black,)),
              //
              //     ],
              //   ),
              ),
              Expanded( // chia tỷ lệ trong 1 row hoặc colum không sử dụng trong stack
                flex: 2,
                  child: Container(
                    color: Colors.red,
                  )),
              Expanded(
                  child: Container(
                    color: Colors.grey,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
