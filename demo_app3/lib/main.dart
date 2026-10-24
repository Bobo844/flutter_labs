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
        body:SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 34,
                  backgroundImage:NetworkImage("https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.fr.clipproject.info%2Fimages%2Fjoomgallery%2Foriginals%2Fbureau_10%2Fingenieur_cliparts_gratuis__bureau_images_20160412_1456662735.png&f=1&nofb=1&ipt=bd117c9bfb6c53298671d2730805eea9c2896c6249c8fce5a21f5e1d42a00628&ipo=images"),
                ),
                Text(
                  "Oumar Camara",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                  ),
                ),
                Icon(Icons.send,color: Colors.black)
              ],
          ),
        ),

          )
          
        )
    );
  }
}
