import 'package:flutter/material.dart';
import 'package:brew_crew/models/brew.dart';

class BrewTile extends StatelessWidget {
  final Brew? brew;
  BrewTile({this.brew});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.brown[brew?.strength ?? 100],
            backgroundImage: AssetImage('assets/coffee_icon.png'),
          ),
          title: Text(
              brew?.name ?? 'Unknown'), // Display 'Unknown' if brew is null
          subtitle: Text(
              'Takes ${brew?.sugars ?? '0'} sugar(s)'), // Display 0 if sugars is null
        ),
      ),
    );
  }
}
