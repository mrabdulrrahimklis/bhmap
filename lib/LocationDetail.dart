import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'models/LocationItemModel.dart';

class LocationDetail extends StatefulWidget {
  final String image;
  final String desc;
  final String name;

  LocationDetail(this.image, this.desc, this.name);

  @override
  State<StatefulWidget> createState() => _LocationDetail();
}

class _LocationDetail extends State<LocationDetail> {
  final List<LocationItemModel> locations = [
    LocationItemModel(
      image: 'assets/images/image2.jpg',
      name: 'Lake Mandek',
      desc:
          'Lake Mandek near Livno. It is located next to the road, on the left side, during the trip from Livno to Busko Lake.',
    ),
    LocationItemModel(
      image: 'assets/images/image3.jpg',
      name: 'Waterfall Kravica',
      desc:
          'Kravica waterfalls - one of the most beautiful waterfalls in Bosnia and Herzegovina, which are located near the town of Ljubuski.',
    ),
    LocationItemModel(
      image: 'assets/images/image4.jpg',
      name: 'Lake Blidinje',
      desc:
          'Blidinje Lake is located at 1185 m above sea level in Blidinje Nature Park between the towns of Jablanica, Posusje and Tomislavgrad. On one side of the lake is Mount Vran and on the other is Mount Čvrsnica. Both mountains are over 2000 m above sea level.',
    ),
    LocationItemModel(
      image: 'assets/images/image5.jpg',
      name: 'Lake Mašica',
      desc:
          'Masica Lake. Beautiful place for rest and relaxation. There are two picnic shelters near the lake so you can enjoy on the rainy days too. There are caves near the lake (Lukina Cave and Srednja Stijena Cave). You can hike for a few hours to the surrounding peaks (Bakos, Tvrtkovac...). It is located in the border region of "Monument of Nature Tajan" 12 km near the resorts of Kamenica near Zavidovici. We say goodbye to the winter version and welcome the green version.',
    ),
    LocationItemModel(
      image: 'assets/images/image6.jpg',
      name: 'River Šujica',
      desc: 'The winding river Sujica near Tomislavgrad.',
    ),
    LocationItemModel(
      image: 'assets/images/image7.jpg',
      name: 'Buškom Lake',
      desc:
          'A beach on Lake Busko located between Livno and Tomislavgrad. A beautiful sandy corner on the largest lake in Bosnia and Herzegovina. Sand, waves, clear water, warm rays of the Sun ... A place to enjoy and relax.',
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
      body: SlidingUpPanel(
        borderRadius: BorderRadius.circular(60),
        parallaxEnabled: true,
        panel: Container(
          margin: EdgeInsets.only(left: 40, right: 40, top: 55),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Icon(
                    Icons.keyboard_arrow_up,
                    size: 40.0,
                  ),
                ),
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
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    height: 1,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Top Location of B&H",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xFF3640ff),
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  widget.desc,
                ),
                ListView(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  children: locations.map((l) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (ctx) => LocationDetail(
                                l.image,
                                l.desc,
                                l.name,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 20,
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              color: Color(0xFFfff9ed),
                              borderRadius: BorderRadius.circular(18.0)),
                          child: Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image(
                                  image: AssetImage(l.image),
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Text(l.name),
                            ],
                          ),
                        ));
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: Image(
            image: AssetImage(widget.image),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
