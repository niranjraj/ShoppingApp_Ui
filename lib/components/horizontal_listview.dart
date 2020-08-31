import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'assets/images/cats/tshirt.png',
            image_caption: 'Shirt',
          ),
          Category(
            image_location: 'assets/images/cats/dress.png',
            image_caption: 'Dress',
          ),
          Category(
            image_location: 'assets/images/cats/jeans.png',
            image_caption: 'Pants',
          ),
          Category(
            image_location: 'assets/images/cats/formal.png',
            image_caption: 'Formal',
          ),
          Category(
            image_location: 'assets/images/cats/informal.png',
            image_caption: 'Informal',
          ),
          Category(
            image_location: 'assets/images/cats/shoe.png',
            image_caption: 'Shoes',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({this.image_caption, this.image_location});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(2.0),
        child: Container(
          width: 90,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 50.0,
              height: 60.0,
            ),
            subtitle: Text(
              image_caption,
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
