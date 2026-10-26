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
        body:Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.network(
                  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%2Fid%2FOIP.xhog4f1-t_AYmLB0RPZGMQHaEK%3Fpid%3DApi&f=1&ipt=b227dcc40b45b9a8ffb89c92bdb8e3ab1790037b0f749fab3246b39864e83bc5&ipo=images",
                  height:MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  
                  ),
                  Container(
                    margin: EdgeInsets.all(24),
                    color: Colors.green.withOpacity(0.5),
                    height: MediaQuery.of(context).size.height,
                    width: 500,
                  ),
                  Text(
                    "Salut les flemares",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 34,
                    ),
                    
                    )
              ],
            ),
        )
          
        )
    );
  }
}
