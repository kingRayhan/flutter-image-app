import '../models/ImageModel.dart' show ImageModel;
import 'package:flutter/material.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return this.imageCart(images[index]);
      },
    );
  }

  Widget imageCart(ImageModel image) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      child: Image.network(image.url),
    );
  }
}
