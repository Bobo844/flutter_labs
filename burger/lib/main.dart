import 'package:flutter/material.dart';

void main() {
  runApp(const BurgerApp());
}

class BurgerApp extends StatelessWidget {
  const BurgerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Burger',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Burger Queen', style: TextStyle(fontSize: 24)),
        leading: Icon(Icons.token, size: 24),
        actions: [Icon(Icons.person, size: 24, color: Colors.black)],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //section du restaurant le plus proche
            Container(
              color: Theme.of(context).colorScheme.inversePrimary,
              height: 150,
              child: Center(
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on_rounded),
                            Text(
                              "Mon restaurant le plus proche",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Text(
                              "4 Km",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                        //barre pink
                        Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.pink,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.touch_app, color: Colors.white),
                              SizedBox(width: 16),
                              Text(
                                "Commander",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //Section en ce moment
            sectionTitle(title: "En ce moment"),
            Center(
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 10,
                //color: Colors.amber,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/layer-burger.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Une petite faim?",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Venez personnaliser votre burger",
                        style: TextStyle(
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .inversePrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //Chaud devant
            sectionTitle(title: "Chaud devant !"),
            const Text('Le meilleur de nos burgers est à portée de clic'),
            SizedBox(
              height: 250,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    burgerCard(
                      name: "Twins",
                      url: "twins",
                      description: "le burger des jumeaux qui fait des paires",
                    ),
                    burgerCard(
                      name: "Big queen",
                      url: "big-queen",
                      description:
                          "pour celle qui porte la couronne à la maison",
                    ),
                    burgerCard(
                      name: "Egg Bacon",
                      url: "egg-bacon-burger",
                      description: "le burger des lève tôt ",
                    ),
                    burgerCard(
                      name: "Prince",
                      url: "prince",
                      description: "le préferé des futurs rois",
                    ),
                    burgerCard(
                      name: "Cheese",
                      url: "cheese",
                      description: "le classique pour les fans de fromage",
                    ),
                  ],
                ),
              ),
            ),
            //Accompagnement
            sectionTitle(title: "Les accompagnements"),
            Card(
              elevation: 8,
              child: Column(
                children: [
                  sideDish(name: "Frites classiques", url: "fries"),
                  sideDish(name: "Frites de patate douce", url: "patate-douce"),
                  sideDish(name: "Poutine", url: "poutine"),
                  sideDish(name: "Potatoes", url: "potatoes"),
                  sideDish(name: "Frites classiques", url: "fries"),
                ],
              ),
            ),
            //Boisson
            sectionTitle(title: "Une petite soif ?"),
            Container(
              color: Theme.of(context).colorScheme.inversePrimary,
              height: 250,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    drink(name: "le classique", url: "classic-cola"),
                    drink(name: "Eau gazeuse", url: "sparkling"),
                    drink(name: "A l'orange", url: "orange-soda"),
                    drink(name: "Goût fraise", url: "strawberry-soda"),
                  ],
                ),
              ),
            ),
            //Section dessert
            sectionTitle(title: "Pour finir une petitie touche sucrée"),
            Wrap(
              alignment: WrapAlignment.spaceAround,
              children: [
                douceur(name: "Glace Oreo", url:"oreo-ice", size: MediaQuery.of(context).size.width * 0.4, context: context),
                douceur(name: "Crêpe Fraise", url:"strawberry-waffle", size: MediaQuery.of(context).size.width * 0.4, context: context),
                douceur(name: "Donut", url:"donut", size: MediaQuery.of(context).size.width * 0.4, context: context),
                douceur(name: "CupCake", url:"cupcake", size: MediaQuery.of(context).size.width * 0.4, context: context),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: sectionTitle(title: "Et bon apetit bien sûr !"),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget sectionTitle({required String title}) {
    return Padding(
      padding: EdgeInsets.only(left: 8, top: 8),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.brown,
          fontSize: 20,
        ),
      ),
    );
  }

  Container burgerCard({
    required String name,
    required String url,
    required String description,
  }) {
    double size = 250;
    TextStyle descriptionStyle = TextStyle(
      fontStyle: FontStyle.italic,
      color: Colors.black54,
    );
    return Container(
      margin: EdgeInsets.all(12),
      clipBehavior: .antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.pink.withOpacity(0.3),
      ),
      height: size,
      width: size,
      child: Column(
        children: [
          Image.asset(
            "assets/images/$url.jpg",
            height: size * 0.6,
            width: size,
            fit: BoxFit.cover,
          ),
          Text(name),
          Text(
            description,
            style: descriptionStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Container sideDish({required String name, required String url}) {
    return Container(
      padding: EdgeInsets.all(4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage("assets/images/$url.jpg"),
              ),
              Text(
                name,
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const Divider(thickness: 2, indent: 8, endIndent: 8),
        ],
      ),
    );
  }

  Container drink({required String name, required String url}) {
    const double heigth = 250;
    const double width = 125;
    return Container(
      margin: const EdgeInsets.all(8),
      height: heigth,
      width: width,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "assets/images/$url.jpg",
            fit: BoxFit.cover,
            height: heigth,
          ),
          Text(
            name,
            style: TextStyle(
              color: Colors.pink,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Container douceur({
    required String name,
    required String url,
    required double size,
    required BuildContext context
  }) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/$url.jpg"),
          fit: BoxFit.cover
          ),
        
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.all(8),
      child: Center(
          child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.inversePrimary,
            borderRadius: BorderRadius.circular(6),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 6,
            vertical: 4
          ),
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
            ),
          ),
      ),
    );
  }
}
