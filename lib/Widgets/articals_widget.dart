import 'package:flutter/material.dart';

class ArticalsWidget extends StatelessWidget {
  String title ;
  String description ;
  String urlToImage ;
  ArticalsWidget({super.key,required this.title,required this.description,required this.urlToImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        urlToImage.isNotEmpty?
        Image.network(urlToImage):Text("Image not Found"),
        SizedBox(height: 30,),
        ListTile(
          title:Text(title.isNotEmpty?title:""),
          subtitle:Text(description.isNotEmpty?description:"No Description"),
        ),
      ],
    );
  }
}
