import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

//la classe qui herite de statelessWidget est une classe qui ne peut pas changer d'état après sa création. Elle est utilisée pour créer des widgets qui ne dépendent pas de l'état interne et qui sont immuables. Cela signifie que les propriétés de la classe ne peuvent pas être modifiées après l'initialisation, et que le widget sera reconstruit uniquement lorsque ses paramètres changent.
class MyApp extends StatelessWidget {
  //constructeur
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Les Widgets Basiques'),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final String title;
  
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
       backgroundColor: Colors.cyan,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.lightBlueAccent,Colors.white,Colors.blue,Colors.deepOrange],
              begin:Alignment.topCenter,
              end: Alignment.bottomCenter,
          )
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/images/avatar.jpeg"),
          radius: 145,
        ),
      )

    );
  }

  
}
