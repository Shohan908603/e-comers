import 'package:flutter/material.dart';
class HorizontalListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
              Category(
                image_location: 'images/p1.jpg',
                image_caption:'Murad',
              ),
            Category(
              image_location: 'images/p1.jpg',
              image_caption:'Murad',
            ),
            Category(
              image_location: 'images/p4.jpg',
              image_caption:'Murad',
            ),Category(
              image_location: 'images/p2.jpg',
              image_caption:'Mahi',
            ),Category(
              image_location: 'images/p1.jpg',
              image_caption:'Emon',
            ),Category(
              image_location: 'images/p3.jpg',
              image_caption:'Jibon',
            ),Category(
              image_location: 'images/p2.jpg',
              image_caption:'Dim',
            ),
            Category(
              image_location: 'images/p2.jpg',
              image_caption:'Dim',
            ),
            Category(
              image_location: 'images/p2.jpg',
              image_caption:'Dim',
            ),
            Category(
              image_location: 'images/p2.jpg',
              image_caption:'Dim',
            ),
            Category(
              image_location: 'images/p2.jpg',
              image_caption:'Dim',
            ),
            Category(
              image_location: 'images/p2.jpg',
              image_caption:'Dim',
            ),




          ],
        ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({required this.image_location, required this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(3.0),
        child: InkWell(
          onTap: (){},
          child: Container(
            width: 80.0,
            child: ListTile(
              title: Image.asset(
                image_location,
                width: 40.0,
                height: 40.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption, style: new TextStyle(fontSize: 12.0),),
              ),
            ),
          )
        ),
    );
  }
}


