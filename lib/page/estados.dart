import 'package:flutter/material.dart';
import 'package:flutter_app_washap/model/status_model.dart';

class Estados extends StatefulWidget {
  @override
  _EstadosState createState() => _EstadosState();
}

class _EstadosState extends State<Estados> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor:Theme.of(context).accentColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(status[2].imgUrl),
            ),
            title: new Text(
              status[0].name,
              style: new TextStyle(fontWeight: FontWeight.bold),    
            ),
            subtitle: new Text("Anadir a mi Estado"),
          ),
          new Text(
            "Recientes",
            style: new TextStyle(fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor:Theme.of(context).accentColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(status[1].imgUrl),
            ),
            title: new Text(
              status[1].name,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: new Text("Anadir a mi Estado"),
          ),
          new Divider(),

          new ListTile(
            leading: new CircleAvatar(
              foregroundColor:Theme.of(context).accentColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage(status[0].imgUrl),
            ),
            title: new Text(
              status[0].name,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: new Text("Anadir a mi Estado"),
          ),
        ],
      ),

    );
  }
}

