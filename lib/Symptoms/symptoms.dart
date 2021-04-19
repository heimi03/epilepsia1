import 'package:epilepsia/Symptoms/attack.dart';
import 'package:epilepsia/config/router.dart';
import 'package:epilepsia/Symptoms/sleep.dart';
import 'package:epilepsia/Symptoms/startseite.dart';
import 'package:flutter/material.dart';

class Symptoms extends StatefulWidget {
   Symptoms({Key key,}) : super(key: key);
  @override
  _SymptomsState createState() => _SymptomsState();
}


class _SymptomsState extends State<Symptoms> {
  @override
   Widget build(BuildContext context) {
    return DefaultTabController(
  length: 3,
  child: Scaffold(
    appBar: AppBar(
      bottom: TabBar(
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: Colors.white,
        tabs: [
          Tab(icon: Icon(Icons.coronavirus), text: 'Symptome',),
          Tab(icon: Icon(Icons.warning), text: 'Anfall',),
          Tab(icon: Icon(Icons.hotel), text: 'Schlaf'),
        ],
      ),
    ),
  body: TabBarView(
           children:[
             Startseite(),
             Attack(),
             Sleep(), ]
 
  ),
),
          );
   }
}

