import 'dart:convert';
import 'widgets/ImageList.dart' show ImageList;
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:async';
import 'models/ImageModel.dart' show ImageModel;

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    // var response =
    //     await get("https://jsonplaceholder.typicode.com/photos/$counter");

    setState(() {
      images.add(new ImageModel(
        id: counter,
        title: "Image title",
        url: "https://picsum.photos/500/300?random=$counter",
      ));
    });
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
        body: ImageList(images),
        appBar: AppBar(
          title: Text("Let's see some images"),
        ),
      ),
    );
  }
}
