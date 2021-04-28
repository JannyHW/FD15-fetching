
import 'package:fd15/components/image_list.dart';
import 'package:fd15/models/image_model.dart';
import 'package:flutter/material.dart';
//for fetch API
import 'package:http/http.dart' show get;
//for JSON data
import 'dart:convert';

void main() => runApp(App());

//Stateful W
class App extends StatefulWidget {
  createState() => AppState();
}

class AppState extends State<App> {
  int counter = 655;//any num
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;

    // var url = Uri(host: 'https://jsonplaceholder.typicode.com/photos/$counter');
    var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Let's fetch $counter colors!",
          style: TextStyle(
            color: Colors.tealAccent,
            fontSize: 24,
          )),
        ),
      body: ImageList(images),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,
      ),
      ),
    );
  }
}
