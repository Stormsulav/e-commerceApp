import 'package:e_commerce/screens/pages/product_details.dart';
import 'package:flutter/material.dart';

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var similarproductList = [
    {
      "name": "Bag",
      "picture": "assets/images/products/bag.jpg",
      "oldPrice": 1000,
      "price": 900,
    },
    {
      "name": "Cool-Shirt",
      "picture": "assets/images/products/designedshirt.jpg",
      "oldPrice": 2000,
      "price": 1400,
    },
    {
      "name": "Vans-shoe",
      "picture": "assets/images/products/vans.jpg",
      "oldPrice": 2000,
      "price": 1600,
    },
    {
      "name": "Nike-Shoe",
      "picture": "assets/images/products/nikeshoe.jpg",
      "oldPrice": 4000,
      "price": 3500,
    },
    {
      "name": "T-shirt",
      "picture": "assets/images/products/m.jpg",
      "oldPrice": 2000,
      "price": 1500,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: similarproductList.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return SimilarSingleProduct(
          productName: similarproductList[index]['name'],
          productPicture: similarproductList[index]['picture'],
          productOldPrice: similarproductList[index]['oldPrice'],
          productPrice: similarproductList[index]['price'],
        );
      },
    );
  }
}

class SimilarSingleProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  SimilarSingleProduct({
    this.productName,
    this.productPicture,
    this.productOldPrice,
    this.productPrice,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  // here we are passing the values of the product to the product detail page
                  builder: (context) => ProductDetails(
                    productDetailName: productName,
                    productDetailPicture: productPicture,
                    productDetailOldPrice: productOldPrice,
                    productDetailPrice: productPrice,
                  ),
                ),
              );
            },
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        productName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                    Text(
                      "\Rs $productOldPrice",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    Text(
                      "\Rs $productPrice",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                  ],
                ),
              ),
              child: Image.asset(
                productPicture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
