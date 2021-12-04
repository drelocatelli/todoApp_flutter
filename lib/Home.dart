import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/AddButton.dart';
import 'package:todoapp/Body.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("To Do App"),
      ),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Body(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: AddButton(),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(184, 184, 184, 1),
        shape: CircularNotchedRectangle(),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top:15, bottom:15, left: 12),
              child: Text("drelocatelli"),
            ),
          ],
        ),
      ),
    );
  }
}
