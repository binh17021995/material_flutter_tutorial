import 'package:flutter/material.dart';

class TutorialMaterial extends StatelessWidget {
  const TutorialMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
            icon: Icon(Icons.menu), tooltip: "Navication", onPressed: null),
        title: const Center(
          child: Text("Hello", textDirection: TextDirection.ltr),
        ),
        actions: const [
          IconButton(
              icon: Icon(Icons.search), tooltip: "Search", onPressed: null)
        ],
      ),
      body: Center(
        child: Text("Xin chào",style: TextStyle(foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1
          ..color = Colors.blue[700]!)),
      ),
    );
  }
}