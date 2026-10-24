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
        child: Column(
                //mainAxisAlignment: MainAxisAlignment.end ,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  customRow(title: "Ousmane Kaba", asset: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.fr.clipproject.info%2Fimages%2Fjoomgallery%2Foriginals%2Fbureau_10%2Fingenieur_cliparts_gratuis__bureau_images_20160412_1456662735.png&f=1&nofb=1&ipt=bd117c9bfb6c53298671d2730805eea9c2896c6249c8fce5a21f5e1d42a00628&ipo=images"),
                  customRow(title: "Mamadou Diallo", asset: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.fr.clipproject.info%2Fimages%2Fjoomgallery%2Foriginals%2Ffaire_la_fete_90%2Fdisco_cliparts_gratuis_-_danse_images_gratuites_20160326_1497335713.png&f=1&nofb=1&ipt=7fbac74c23e0b2a6f758b89a4e55a9003944eaeffe6009890ab98b244b5ec0b0&ipo=images"),
                  customRow(title: "Fatima Sow", asset: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%2Fid%2FOIP.vMHWVVA0JPQpYKz4O_bFwgHaFj%3Fpid%3DApi&f=1&ipt=57a7db6dae19ec3be2d63601e3b2fb3d17fd69bdbc31bcf6553059298be88b9d&ipo=images"),

                ],
        ),
        

          )
          
        )
    );
  }

Row customRow({required String title, required String asset}){
  return  Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 34,
                  backgroundImage:NetworkImage(asset),
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                  ),
                ),
                Icon(Icons.send,color: Colors.black)
              ],
          );
}

}
