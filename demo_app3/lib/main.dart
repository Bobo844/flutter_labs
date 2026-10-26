import 'package:flutter/material.dart';

void main() {
  runApp(const MonApplication());
}

class MonApplication extends StatelessWidget {
  const MonApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text('Les widgets de base'),
        ),
        body:Column(
          children: [
            Container(
              height:64,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.lightGreenAccent
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                  colors:[
                      Colors.deepOrangeAccent,
                      Colors.greenAccent
                      
                    ],
                    begin: Alignment.bottomCenter
                  )
                ),
              ),
            )
          ]
        )
          
        )
    );
  }
}
