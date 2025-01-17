import 'package:e_commerce/screens/pages/product_details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Dress",
      "picture": "assets/images/products/f.jpg",
      "oldPrice": 1500,
      "price": 1200,
    },
    {
      "name": "Bag",
      "picture": "assets/images/products/bag.jpg",
      "oldPrice": 1000,
      "price": 900,
    },
    {
      "name": "Heel",
      "picture": "assets/images/products/heel.jpg",
      "oldPrice": 5000,
      "price": 4500,
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
      "name": "Cool-Sweater",
      "picture": "assets/images/products/fashionsweater.jpg",
      "oldPrice": 3000,
      "price": 2500,
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
      itemCount: productList.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return SingleProduct(
          productName: productList[index]['name'],
          productPicture: productList[index]['picture'],
          productOldPrice: productList[index]['oldPrice'],
          productPrice: productList[index]['price'],
        );
      },
    );
  }
}

class SingleProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  SingleProduct({
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
