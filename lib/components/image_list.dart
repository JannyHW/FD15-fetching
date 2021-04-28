import 'package:flutter/material.dart';
import 'package:fd15/models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;
  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      padding: EdgeInsets.all(40.0),
      margin: EdgeInsets.all(40.0),
      child: Flexible(
              child: Column(
          children: <Widget>[
            Padding(
              child: Image.network(image.url),
              padding: EdgeInsets.only(bottom: 8.0),
            ),
            Text(image.title.toUpperCase(),
            style: TextStyle(fontSize: 18,
            color: Colors.white,
            fontStyle: FontStyle.italic,),),
          ],
        ),
      ),
    );
  }
}