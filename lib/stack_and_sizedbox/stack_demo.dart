import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackDemo extends StatefulWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  State<StackDemo> createState() => _StackDemoState();
}

class _StackDemoState extends State<StackDemo> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo stack',
      home: Scaffold(
        body: SafeArea(
          child:Container(
            width: 60,
            height: 50,
            color: Colors.blue,
            // child: Stack(
            //   //fit: StackFit.expand, // cho phép thằng con trong stack dãn hết cỡ
            //  alignment: AlignmentDirectional.bottomStart,// tất cả thằng con sẽ theo hướng mà thằng stack cha quy định
            //   children: [ // thằng nào sau xếp trước sẽ bị thằng sau đè lên
            //     Container(
            //       height: 100,
            //       child: Image.asset('assets/images/appbar.png'),
            //     ),
            //
            //   ],
            // ),


                // tạo box chứa giới hạn của text, nếu set width và height cho SizedBox thì nội dung trong thẻ chỉ hiển thị 1 phần nằm trong box
                // child: Card(
                //   borderOnForeground: false,
                //   margin: EdgeInsets.all(20),
                 // child: Text('JDFKDJDF DJFIDJ FDJFIDJF FDIFJDIJF Dsdsdsd dfdfdf FJDFIJDFJDF'),

            child: SizedBox.shrink(
              child: Text('dsdjfdjf sdjsfshshfhdguhsdusdshdj dsdhshdush sdhudhsuhd '),
            ),
          )
        ),
      ),
    );
  }
}

