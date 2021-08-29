import 'package:animate_do_app/screens/Screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: JelloIn(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 1000),
            child: Text('Animation_Do')),
        actions: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.twitter),
            onPressed: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (BuildContext context) => TwitterPage()));
            },
          ),
          ZoomIn(
            delay: Duration(milliseconds: 300),
            duration: Duration(milliseconds: 600),
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.ubuntu),
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (BuildContext context) => Pagina1Page()));
              },
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElasticIn(
              delay: Duration(milliseconds: 1100),
              child: FaIcon(
                FontAwesomeIcons.linux,
                color: Colors.blue,
                size: 80,
              ),
            ),
            FadeInDown(
              delay: Duration(milliseconds: 200),
              child: Text('Titulo',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200)),
            ),
            FadeInDown(
              delay: Duration(milliseconds: 800),
              child: Text('Soy un texto Peque;o perras',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            ),
            FadeInLeft(
              delay: Duration(milliseconds: 1100),
              child: Container(
                width: 300,
                height: 2,
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: ElasticIn(
        duration: Duration(milliseconds: 2000),
        child: FloatingActionButton(
          child: FaIcon(FontAwesomeIcons.play),
          onPressed: () {
            Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (BuildContext context) => NavegacionPage()));
          },
        ),
      ),
    );
  }
}
