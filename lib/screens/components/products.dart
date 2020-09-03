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
                child: ListTile(
                  leading: Text(
                    productName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Text(
                    "\Rs $productPrice",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(
                    "\Rs $productOldPrice",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
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
