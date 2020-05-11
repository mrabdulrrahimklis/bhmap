import 'package:bhmap/LocationDetail.dart';
import 'package:flutter/material.dart';
import 'models/LocationItemModel.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<LocationItemModel> locations = [
    LocationItemModel(
      image: 'assets/images/image2.jpg',
      name: 'Lake Mandek',
      desc: 'Lake Mandek near Livno. It is located next to the road, on the left side, during the trip from Livno to Busko Lake.',
    ),
    LocationItemModel(
      image: 'assets/images/image3.jpg',
      name: 'Waterfall Kravica',
      desc: 'Kravica waterfalls - one of the most beautiful waterfalls in Bosnia and Herzegovina, which are located near the town of Ljubuski.',
    ),
    LocationItemModel(
      image: 'assets/images/image4.jpg',
      name: 'Lake Blidinje',
      desc: 'Blidinje Lake is located at 1185 m above sea level in Blidinje Nature Park between the towns of Jablanica, Posusje and Tomislavgrad. On one side of the lake is Mount Vran and on the other is Mount Čvrsnica. Both mountains are over 2000 m above sea level.',
    ),
    LocationItemModel(
      image: 'assets/images/image5.jpg',
      name: 'Lake Mašica',
      desc: 'Masica Lake. Beautiful place for rest and relaxation. There are two picnic shelters near the lake so you can enjoy on the rainy days too. There are caves near the lake (Lukina Cave and Srednja Stijena Cave). You can hike for a few hours to the surrounding peaks (Bakos, Tvrtkovac...). It is located in the border region of "Monument of Nature Tajan" 12 km near the resorts of Kamenica near Zavidovici. We say goodbye to the winter version and welcome the green version.',
    ),
    LocationItemModel(
      image: 'assets/images/image6.jpg',
      name: 'River Šujica',
      desc: 'The winding river Sujica near Tomislavgrad.',
    ),
    LocationItemModel(
      image: 'assets/images/image7.jpg',
      name: 'Buškom Lake',
      desc: 'A beach on Lake Busko located between Livno and Tomislavgrad. A beautiful sandy corner on the largest lake in Bosnia and Herzegovina. Sand, waves, clear water, warm rays of the Sun ... A place to enjoy and relax.',
    ),
    LocationItemModel(
      image: 'assets/images/image8.jpg',
      name: 'Mountain Osjecenica',
      desc:
          'Mount Osjecenica, viewed by the village of Vrtoce near Bosanski Petrovac.',
    ),
    LocationItemModel(
      image: 'assets/images/image9.jpg',
      name: 'Waterfall Neretva',
      desc:
          'Waterfall, cold Neretva, greenery, white water rafting... On this tour you get relaxation in these quieter parts as well as excitement in those wild parts of the ice cold Neretva River.',
    ),
    LocationItemModel(
      image: 'assets/images/image14.jpg',
      name: 'Mt. Visocica',
      desc:
          'Vitamin view from Mt. Treskavica to Mt. Visocica with peak Puzim (1776 m above sea level) in the middle.',
    ),
    LocationItemModel(
      image: 'assets/images/image19.jpg',
      name: 'Bitovnja Mountain',
      desc:
          'Beautiful view from Bitovnja Mountain to the wild Prenj Mountain covered by snow. On the left side are the peaks Zelena Glava (2155 m above sea level) and Otis (2097 m above sea level) and on the right is peak Velika Kapa (2004 m)',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/images/image1.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Chip(
                          label: Text(
                            'Bosnia and Herzegovina',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          backgroundColor: Color(0xFF3640ff),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Discover\nB&H",
                          style: TextStyle(
                            fontSize: 60,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            height: 1,
                            shadows: [
                              Shadow(
                                blurRadius: 50,
                                color: Color(0xFF000000),
                                offset: Offset(0, 0),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 200.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            'Visit Bosnia and Herzegovina',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 20,
                          ),
                          height: 200,
                          child: ListView.builder(
                            itemCount: locations.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (ctx, i) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (ctx) => LocationDetail(
                                        locations[i].image,
                                        locations[i].desc,
                                        locations[i].name,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 170,
                                  margin: EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 40,
                                          color: Color(0x99000000),
                                          offset: Offset(4, 20),
                                        ),
                                      ]),
                                  child: Column(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16),
                                        child: Image(
                                          image: AssetImage(locations[i].image),
                                          width: 170,
                                          height: 170,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text(
                                        locations[i].name,
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
