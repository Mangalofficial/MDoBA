import 'package:MDoBA/ui/content.dart';
import 'package:MDoBA/ui/ip.dart';
import 'package:MDoBA/ui/video.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';

class Myhome extends StatefulWidget {
  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  int _currentIndex = 0;

  List<dynamic> _contents = [
    MainContent(),
    Video(),
    DockerHost(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 50,
        ),
        title: Image.asset(
          'assets/docker_black.png',
          height: 45,
        ),
        // leading: IconButton(
        //   onPressed: () => Scaffold.of(context).openDrawer(),
        //   icon: Icon(Icons.dehaze_sharp),
        //   tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30.0,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Colors.amberAccent,
      ),
      drawer: Appdrawer(),
      body: SafeArea(
        child: _contents[_currentIndex],
      ),
      bottomNavigationBar: ClipRRect(
        child: BottomNavigationBar(
          backgroundColor: Colors.amberAccent,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey[700],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 5.0,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
                size: 30.0,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.ondemand_video,
                size: 30.0,
              ),
              activeIcon: Icon(
                Icons.ondemand_video,
                size: 30.0,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.offline_bolt,
                size: 33.0,
              ),
              activeIcon: Icon(
                Icons.offline_bolt,
                size: 33.0,
              ),
              title: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
