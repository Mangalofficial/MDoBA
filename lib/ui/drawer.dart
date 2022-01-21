import 'package:flutter/material.dart';

class Appdrawer extends StatefulWidget {
  @override
  _AppdrawerState createState() => _AppdrawerState();
}

class _AppdrawerState extends State<Appdrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF292C31),
            ),
            child: ListTile(
              leading: FloatingActionButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
                mini: true,
                child: Icon(
                  Icons.arrow_back,
                  color: Color(0xFF8D8E98),
                ),
                backgroundColor: Color(0xFF24282C),
              ),
              title: Text(
                '         About me',
                style: TextStyle(
                  color: Colors.grey[50],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            color: Color(0xFF292C31),
            child: Container(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.all(60),
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/manglam.png'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x2F8D8E98),
                    blurRadius: 10.0,
                    spreadRadius: 10.0,
                    offset: Offset(0.0, 0.0),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey[50],
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              children: [
                Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 30,
                      ),
                      title: Text(
                        'Kumar Manglam',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        '[RH294] Ansible | Devops | MLops | Flutter | Hybridmulticloud',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.email,
                        size: 25,
                        color: Colors.black,
                      ),
                      title: Text(
                        'manglam235@gmail.com',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.insert_link,
                        size: 28,
                        color: Colors.black,
                      ),
                      title: Text(
                        'github.com/Mangalofficial.com',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.stars,
                        size: 27,
                        color: Colors.black,
                      ),
                      title: Text(
                        'hub.docker.com/u/manglam240',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 34,
                    ),
                    ListTile(

                        //leading: Icon(Icons.person_outline),
                        //title: Text('Kumar Manglam'),
                        ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: Colors.amberAccent,
                        child: ListTile(
                          leading: Icon(
                            Icons.bubble_chart,
                            size: 32,
                            color: Colors.black,
                          ),
                          title: Text(
                            'Version: 1.0.0',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
