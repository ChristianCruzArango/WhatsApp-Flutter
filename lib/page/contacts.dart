import 'package:flutter/material.dart';
import 'package:flutter_app_washap/model/chat_contact.dart';
import 'package:flutter_app_washap/page/chats_contacts.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
        title: new Text("Seleccione el contacto"),
      ),
      body: ListView.builder(
          itemCount:messageData.length,
          itemBuilder: (context,i)=>new Column(
            children: <Widget>[
              new Divider(
                height: 10.0,
              ),
              new ListTile(
                leading: new CircleAvatar(
                  backgroundImage: NetworkImage(messageData[i].imageUrl),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(messageData[i].name,
                    style: new TextStyle(color: Colors.grey,fontSize: 14.0),
                    )
                  ],
                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: new Text(
                    messageData[i].message,
                    style: new TextStyle(color:Colors.grey,fontSize: 15.0),
                  ),
                ),
                onTap: (){
                  var route = new MaterialPageRoute(
                      builder:(BuildContext context)=>new ChatContacts(name:messageData[i].name)
                  );
                  Navigator.of(context).push(route);
                },
              )
            ],
          ),
      ),




    );
  }
}
