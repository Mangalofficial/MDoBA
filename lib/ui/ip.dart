import 'package:flutter/material.dart';

import 'input.dart';

var ip;

class DockerHost extends StatefulWidget {
  @override
  _DockerHostState createState() => _DockerHostState();
}

class _DockerHostState extends State<DockerHost> {
  TextEditingController _controller;

  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.grey[50],
      child: Column(
        children: <Widget>[
          SizedBox(height: 85),
          SizedBox(
            height: 155.0,
            child: Image.asset(
              'assets/docker_circle.png',
              fit: BoxFit.fill,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: TextField(
              onChanged: (value1) {
                ip = value1;
              },
              cursorColor: Colors.grey,
              autofocus: false,
              autofillHints: null,
              decoration: InputDecoration(
                hintText: 'Enter Your IP',
                contentPadding:
                    EdgeInsets.only(top: 0, left: 25, right: 5, bottom: 0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    borderSide: BorderSide(color: Colors.black)),
                labelText: 'HOST IP',
                helperText: 'Enter IP of the format 192.164.0.1',
                prefixIcon: const Icon(
                  Icons.date_range,
                  color: Colors.black,
                ),
                suffixStyle: const TextStyle(color: Colors.black),
              ),
              onSubmitted: (String value) async {
                await showDialog<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text(
                        'Output !!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      content: Text('$value'),
                      actions: <Widget>[
                        FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          padding: EdgeInsets.only(left: 10, right: 10),
                          color: Colors.grey[350],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey)),
                          child: const Text(
                            'OK',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          FlatButton(
              onPressed: () {
                print('Run Docker cmd');
                Navigator.pushNamed(context, "/run");
              },
              padding: EdgeInsets.only(left: 10, right: 10),
              color: Colors.grey[350],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.grey)),
              child: Text('click here')),
        ],
      ),
    );
  }
}
