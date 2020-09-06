import 'package:e_commerce/screens/components/similarproducts.dart';
import 'package:e_commerce/screens/homepage.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productDetailName;
  final productDetailPicture;
  final productDetailOldPrice;
  final productDetailPrice;

  ProductDetails(
      {this.productDetailName,
      this.productDetailPicture,
      this.productDetailOldPrice,
      this.productDetailPrice});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepOrangeAccent,
        title: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            child: Text("Shopping App"),
          ),
        ),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 350.0,
            child: GridTile(
              child: Container(
                color: Colors.blueGrey[200],
                child: Image.asset(widget.productDetailPicture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.productDetailName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "\Rs ${widget.productDetailOldPrice}",
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\Rs ${widget.productDetailPrice}",
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 23.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

//         ======== the first button========

          Row(
            children: [
              // ==========the size button========

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Size"),
                            content: Text("Choose the size"),
                            actions: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white38,
                  textColor: Colors.blueGrey[700],
                  elevation: 1.0,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),

              // ==========the color button========

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Color"),
                            content: Text("Choose the color"),
                            actions: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white38,
                  textColor: Colors.blueGrey[700],
                  elevation: 1.0,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),

              // ==========the Quantity button========

              Expanded(
                flex: 1,
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Quantity"),
                            content: Text("Choose the quantity"),
                            actions: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("Close"),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white38,
                  textColor: Colors.blueGrey[700],
                  elevation: 1.0,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),

          //  ====== second button===========

          Row(
            children: [
              // ========= buy button =============
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text("Buy now"),
                ),
              ),

              IconButton(
                icon: Icon(Icons.add_shopping_cart),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
              ),
            ],
          ),
          Divider(
            color: Colors.black87,
          ),
          ListTile(
            title: Text("Product details"),
            subtitle: Text(
                "Asxa,mcl,ancmn vasdlvnc adsclmadcmadslkcmadcklnadcknas dvcjdbvcsjfvbaeibgvknvflak;dnvvlknd"),
          ),
          Divider(
            color: Colors.black87,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Product name"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(widget.productDetailName),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Product brand"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Brand X"),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Product condition"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("New"),
              ),
            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Similar Products"),
          ),
          // Similar products begins here
          Container(
            height: 340.0,
            child: SimilarProducts(),
          ),
        ],
      ),
    );
  }
}
