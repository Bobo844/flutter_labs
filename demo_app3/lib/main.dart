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
            Divider(
              height: 120,
              thickness: 7,
              indent: 24,
              endIndent: 34,
              color: Colors.amber,
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.cyan,
              height: 200,
            ),
            Icon(
              Icons.add_a_photo,
              size: 55,
              color: Colors.blue,
              ),
              SizedBox(height: 25,),
              Row(
                children: [
                  SizedBox(width: 24,),
                  Icon(
                    Icons.home,
                    size: 34,
                    color: Colors.lightGreenAccent,
                  ),
                  SizedBox(
                    height: 32,
                    child: VerticalDivider(
                    thickness: 6,
                    color: Colors.red,
                  ),
                  ),
                  Spacer(flex: 2,),
                  Text("salut les petits con"),
                  Spacer(),
                  Icon(Icons.send),
                ],
              )

          ],
        )
          
        )
    );
  }
}
