import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "cats",
                icon: Icon(Icons.catching_pokemon),
              ),
              Tab(text: "dogs", icon: Icon(Icons.light_outlined)),
              Tab(text: "lions", icon: Icon(Icons.access_alarm)),
            ],
          ),
          title: const Text('animals TabBar'),
        ),
        body: TabBarView(
          children: [
            Center(child: Image.asset('images/cat.jpeg')),
            Center(child: Image.asset('images/dog.jpeg')),
            Center(child: Image.asset('images/lion.jpeg')),
          ],
        ),
      ),
    );
  }
}
