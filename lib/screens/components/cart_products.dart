import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsOntheCart = [
    {
      "name": "Dress",
      "picture": "assets/images/products/f.jpg",
      "price": 1200,
      "Size": "32",
      "Color": "Green",
      "Quantity": 2,
    },
    {
      "name": "Bag",
      "picture": "assets/images/products/bag.jpg",
      "price": 900,
      "Size": "10",
      "Color": "Red",
      "Quantity": 4,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productsOntheCart.length,
      itemBuilder: (context, index) {
        return SingleCartProduct(
          cartproductName: productsOntheCart[index]["name"],
          cartproductPicture: productsOntheCart[index]["picture"],
          cartproductPrice: productsOntheCart[index]["price"],
          cartproductColor: productsOntheCart[index]["Color"],
          cartproductSize: productsOntheCart[index]["Size"],
          cartproductqty: productsOntheCart[index]["Quantity"],
        );
      },
    );
  }
}

class SingleCartProduct extends StatelessWidget {
  final cartproductName;
  final cartproductPicture;
  final cartproductSize;
  final cartproductPrice;
  final cartproductColor;
  final cartproductqty;

  SingleCartProduct({
    this.cartproductName,
    this.cartproductPicture,
    this.cartproductSize,
    this.cartproductPrice,
    this.cartproductColor,
    this.cartproductqty,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          cartproductPicture,
          width: 80.0,
        ),
        // title section
        title: Text(cartproductName),
        // subtitle section
        subtitle: Column(
          children: [
            Row(
              children: [
                // section for the size
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text("Size"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    cartproductSize,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                // section for the color
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                  child: Text("Color"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    cartproductColor,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            // section for the Price
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\Rs $cartproductPrice",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        trailing: SingleChildScrollView(
          child: Column(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_drop_up),
                onPressed: () {},
              ),
              Text("$cartproductqty"),
              IconButton(
                icon: Icon(Icons.arrow_drop_down),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
