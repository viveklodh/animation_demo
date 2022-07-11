import 'package:flutter/material.dart';

//model
class Animal {
  String name;
  String path;
  Animal(this.name, this.path);
}

class HeroAnimationExample extends StatelessWidget {
  List imagesList = [
    Animal("cat", "images/cat.jpeg"),
    Animal("dog", "images/dog.jpeg"),
    Animal("lion", "images/lion.jpeg"),
    Animal("sqrel", "images/sqrel.jpg"),
    Animal("weather", "images/weatherImage.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hero animation example"),
      ),
      body: ListView.builder(
          itemCount: imagesList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AnimalDetailPage(imagesList[index].path)));
                },
                leading: SizedBox(
                    width: 80,
                    child: Hero(
                      tag: imagesList[index].path,
                      child: Image.asset(
                        imagesList[index].path,
                        fit: BoxFit.fill,
                      ),
                    )),
                title: Text(imagesList[index].name),
                trailing: Icon(Icons.delete),
              ),
            );
          }),
    );
  }
}

class AnimalDetailPage extends StatelessWidget {
  String path;
  AnimalDetailPage(this.path);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("animal detail page"),
      ),
      body: Center(child: Hero(tag: path, child: Image.asset(path))),
    );
  }
}
