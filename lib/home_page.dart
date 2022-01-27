import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map> myItems = [
    {
      "svgImage": "assets/images/emojione-monotone_green-salad.svg",
      "nameMenu": "Appetizer",
      "countData": "149 Course"
    },
    {
      "svgImage": "assets/images/emojione-monotone_pot-of-food.svg",
      "nameMenu": "Main Dish",
      "countData": "50 Course"
    },
    {
      "svgImage": "assets/images/emojione-monotone_ice-cream.svg",
      "nameMenu": "Desserts",
      "countData": "225 Course"
    }
  ];

  final List<Map> myFoodPopular = [
    {
      "imagePopular": "assets/images/nasi-goreng.jpg",
      "namePopular": "Nasi Goreng Telur",
      "ratingPopular": "4012"
    },
    {
      "imagePopular": "assets/images/rendang.jpg",
      "namePopular": "Daging Rendang Padang",
      "ratingPopular": "2009"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffF0F3FF),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Color(0xff3267E3),
            selectedFontSize: 14,
            unselectedFontSize: 14,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home_outlined),
              ),
              BottomNavigationBarItem(
                label: "Pesanan",
                icon: Icon(Icons.paste_outlined),
              ),
              BottomNavigationBarItem(
                label: "Pesan",
                icon: Icon(Icons.inbox_outlined),
              ),
              BottomNavigationBarItem(
                label: "Sttings",
                icon: Icon(Icons.settings_outlined),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg'),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xffD7E6FD),
                        radius: 30.0,
                        child: IconButton(
                          splashColor: Colors.white.withOpacity(0),
                          iconSize: 30.0,
                          onPressed: () {},
                          icon: Icon(Icons.search),
                          color: Theme.of(context).primaryColor,
                          padding: EdgeInsets.zero,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xffD7E6FD),
                        radius: 30.0,
                        child: IconButton(
                          splashColor: Colors.white.withOpacity(0),
                          iconSize: 30.0,
                          onPressed: () {},
                          icon: Icon(Icons.notifications_none),
                          color: Theme.of(context).primaryColor,
                          padding: EdgeInsets.zero,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Hallo, Tommy',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'What food you want today?',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 120,
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      children: myItems
                          .map((item) => Container(
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.all(10),
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundColor: Color(0xffD7E6FD),
                                      radius: 20.0,
                                      child: SvgPicture.asset(
                                        item['svgImage'],
                                        height: 25,
                                        width: 25,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    Text(
                                      item['nameMenu'],
                                      style: TextStyle(
                                        color: Color(0xff082431),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      item['countData'],
                                      style: TextStyle(
                                        color: Color(0xffA2ADB1),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Food',
                        style: TextStyle(
                          color: Color(0xff082431),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Show all',
                        style: TextStyle(
                          color: Color(0xff006EEE),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 180,
                    child: GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: myFoodPopular
                          .map(
                            (epopular) => Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Favorite',
                        style: TextStyle(
                          color: Color(0xff082431),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Show all',
                        style: TextStyle(
                          color: Color(0xff006EEE),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
