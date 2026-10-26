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
        //ce composant permet d'adapter nos interfaces au different appareille ou elle s'afficherons
        body: SafeArea(
          bottom: false,
          //top: false,
          child: Column(
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
            ),
           Container(
            child:  Wrap(
              children: [
                Container(
                  color: Colors.red,
                  height: 54,
                  width: 28,
                ),
                 Container(
                  color: Colors.white,
                  height: 54,
                  width: 28,
                ),
                 Container(
                  color: Colors.black,
                  height: 54,
                  width: 28,
                ),
                 Container(
                  color: Colors.cyanAccent,
                  height: 54,
                  width: 28,
                ),
                 Container(
                  color: Colors.blue,
                  height: 54,
                  width: 28,
                ),
              ],
            ),
           )
          ]
        ))
          
        )
    );
  }
}
