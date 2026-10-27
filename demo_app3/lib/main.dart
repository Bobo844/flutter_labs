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
        backgroundColor: Colors.blue,
        body: Center(
          child:Card(
            clipBehavior: Clip.antiAlias,
            elevation: 8,
            margin: EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  "Mon identité",
                  style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Divider(
                    color: Colors.blueAccent,
                    indent: 8,
                    endIndent: 8,
                    thickness: 2,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundImage: NetworkImage(
                          "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIF.i%252blRD0btuRHLLYFpS%252bkmgw%26pid%3DApi&f=1&ipt=1c58d377364c86c9e33a9eab743aa86bfb38f020bc1e61130a4fc0848c8ac9a2&ipo=images",
                          
                          ),
                  
                      ),
                      Spacer(),
                      Text(
                        "Medy Smith",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        SizedBox(height: 14,),
                        Image.network(
                            "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.pixabay.com%2Fphoto%2F2023%2F10%2F30%2F15%2F02%2Fai-generated-8353082_640.jpg&f=1&nofb=1&ipt=a1337621e458de2cd1431521215b5133de3c62c6fd25e06fb6718b27a170a82f&ipo=images"                          
                        )
                    ],
                  )
              ],
            ),
          ),
          )
        )
    );
  }
}
