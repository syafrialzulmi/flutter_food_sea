import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F3FF),
      bottomNavigationBar: BottomNavigationBar(
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
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
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
                  SizedBox(
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
              SizedBox(
                height: 10,
              ),
              Text(
                'Hallo, Tommy',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'What food you want today?',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
