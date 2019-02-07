import 'package:flutter/material.dart';
import 'package:flutter_app_washap/page/camara.dart';
import 'package:flutter_app_washap/page/chat.dart';
import 'package:flutter_app_washap/page/estados.dart';
import 'package:flutter_app_washap/page/llamadas.dart';
import 'package:flutter_app_washap/page/contacts.dart';

class WhatsAppHome extends StatefulWidget {
  var cameras;

  WhatsAppHome(this.cameras);

  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}
class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin{
  TabController _tabController ;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this ,initialIndex: 1,length: 4 /*este numero es de referencia a la cantidad de pestanas que tendra el menu */ );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WashapFlutter"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "Chats"),
            new Tab(text: "Estados"),
            new Tab(text: "Llamadas"),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
          new Icon(Icons.more_vert)
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new Camara(widget.cameras),
          new ChatList(),
          new Estados(),
          new Llamadas(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: (){
            var route = new MaterialPageRoute(
                builder:(BuildContext context)=> new Contacts()
            );
            Navigator.of(context).push(route);
          },
          backgroundColor: Theme.of(context).accentColor,
          child: new Icon(Icons.message,color: Colors.white),
      ),
    );
  }
}