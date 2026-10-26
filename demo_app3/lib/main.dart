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
            Text("Salut les codeurs"),
            Spacer(),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.cyan,
              height: 200,
            ),
            Spacer(
              flex: 3, //il permet de limiter l'espace occupé
            ), //permet d'avoir de l'espace 
            Icon(
              Icons.add_a_photo,
              size: 55,
              color: Colors.blue,
              )
          ],
        )
          
        )
    );
  }
}
