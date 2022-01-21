import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'ip.dart';

class DockerRun extends StatefulWidget {
  @override
  _DockerRunState createState() => _DockerRunState();
}

class _DockerRunState extends State<DockerRun> {
  var cmd = " ";
  var webdata;
  myweb(cmd) async {
    var url = "http://${ip}/cgi-bin/web.py?x=${cmd}";
    var r = await http.get(url);

    setState(
      () {
        webdata = r.body;
      },
    );
  }

  Future<void> _showSheet(BuildContext context) async {
    final maxBorderRadius = 50.0;
    var borderRadius = maxBorderRadius;
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) {
        return NotificationListener<DraggableScrollableNotification>(
          onNotification: (notification) {
            borderRadius =
                notification.maxExtent <= (notification.extent + 0.08)
                    ? 0
                    : maxBorderRadius;
            //log('$notification');
            return false;
          },
          child: DraggableScrollableSheet(
            expand: true,
            builder: (_, controller) {
              return AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(borderRadius),
                    topRight: Radius.circular(borderRadius),
                  ),
                ),
                padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                margin:
                    EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                child: ListView(
                  controller: controller,
                  shrinkWrap: false,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(2),
                          margin: EdgeInsets.only(bottom: 5),
                          width: 80,
                          height: 80,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/docker_circle.png',
                              color: Colors.black,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          flex: 4,
                          child: Text(
                            cmd,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            padding: EdgeInsets.all(4),
                            alignment: Alignment.topRight,
                            child: Icon(Icons.close),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Output !!',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          size: 16,
                        ),
                        SizedBox(width: 8),
                        Text('Please wait...'),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

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
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[50],
        child: Column(
          children: <Widget>[
            SizedBox(height: 25),
            SizedBox(
              height: 155.0,
              child: Image.asset('assets/Docker-512.png'),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: TextField(
                onChanged: (value) {
                  cmd = value;
                },
                cursorColor: Colors.grey,
                autofocus: false,
                autofillHints: null,
                decoration: InputDecoration(
                    hintText: 'Enter the Commands',
                    contentPadding:
                        EdgeInsets.only(top: 0, left: 25, right: 5, bottom: 0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: 'Enter Docker Commands',
                    helperText: 'Run your all docker commands here.',
                    prefixIcon: const Icon(
                      Icons.date_range,
                      color: Colors.black,
                    ),
                    suffixStyle: const TextStyle(color: Colors.black)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
                onPressed: () {
                  print(null);
                  _showSheet(context);
                },
                padding: EdgeInsets.only(left: 10, right: 10),
                color: Colors.grey[350],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.grey)),
                child: Text('run')),
          ],
        ),
      ),
    );
  }
}
