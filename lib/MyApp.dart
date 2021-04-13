import 'package:flutter/material.dart';
import 'package:mynewflutt/widgets/MyStack.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mik Link"),
        actions: [
          IconButton(
              icon: Icon(Icons.access_alarm),
              onPressed: () {
                print("i am clicked");
              })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("fab clicked");
        },
        child: Icon(Icons.access_alarm_rounded),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1548367074-c9804f727062?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
              ),
              accountName: Text("Helen Yilma"),
              accountEmail: Text("abcd@gmial.com"),
            ),
            ListTile(
                leading: Icon(Icons.mail_outlined),
                title: Text("New Mail"),
                onTap: () {}),
            ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text("Access Alarm"),
                onTap: () {}),
            ListTile(
                leading: Icon(Icons.backpack_rounded),
                title: Text("Something"),
                onTap: () {}),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: MyStack(),
      ),
    );
  }
}
