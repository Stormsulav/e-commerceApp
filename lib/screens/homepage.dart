import 'package:carousel_pro/carousel_pro.dart';
import 'package:e_commerce/screens/components/horizontal_list_view.dart';
import 'package:e_commerce/screens/components/products.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("assets/images/shop1.jpg"),
          AssetImage("assets/images/shop2.jpg"),
          AssetImage("assets/images/shop3.jpg"),
          AssetImage("assets/images/shop4.jpg"),
        ],
        autoplay: true,
        // animationCurve: Curves.fastOutSlowIn,
        // animationDuration: Duration(milliseconds: 200),
        dotSize: 5.0,
        dotColor: Colors.black,
        indicatorBgPadding: 3.0,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepOrangeAccent,
        title: Center(
          child: Text("Shopping App"),
        ),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Sulav Gurung'),
              accountEmail: Text("sulavgurung4@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
            ),

            // body

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Categories"),
                leading: Icon(Icons.category),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(Icons.favorite),
              ),
            ),

            Divider(
              thickness: 5,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          // image carousel begins here
          imageCarousel,
          // padding
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Categories",
              style: TextStyle(fontSize: 17.0),
            ),
          ),
          // horizontal views begins from here
          HorizontalList(),
          // padding
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Recent Products",
              style: TextStyle(fontSize: 17.0),
            ),
          ),
          // GridView begin here
          Container(
            height: 400.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
