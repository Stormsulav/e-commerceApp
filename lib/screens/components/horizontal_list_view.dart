import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            imageLocation: 'assets/images/category/formal.png',
            imageCaption: 'Formal',
          ),
          Category(
            imageLocation: 'assets/images/category/tshirt.png',
            imageCaption: 'Tshirt',
          ),
          Category(
            imageLocation: 'assets/images/category/dress.png',
            imageCaption: 'Dress',
          ),
          Category(
            imageLocation: 'assets/images/category/jacket.png',
            imageCaption: 'Jackets',
          ),
          Category(
            imageLocation: 'assets/images/category/pants.png',
            imageCaption: 'Pant',
          ),
          Category(
            imageLocation: 'assets/images/category/shoes.png',
            imageCaption: 'Shoes',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({
    this.imageLocation,
    this.imageCaption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              imageLocation,
              width: 100.0,
              height: 80.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                imageCaption,
                style: TextStyle(fontSize: 16.0, color: Colors.red),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
