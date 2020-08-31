import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:shoppingApp/components/horizontal_listview.dart';
import 'package:shoppingApp/components/products.dart';
import 'package:shoppingApp/pages/cart.dart';
import 'package:shoppingApp/components/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Icon srchIcon = Icon(Icons.search);
  Widget searchBarTxt = Text("ShopApp");

  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = Container(
      height: MediaQuery.of(context).copyWith().size.height / 3,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/c1.jpg'),
          AssetImage('assets/images/m1.jpg'),
          AssetImage('assets/images/m2.jpg'),
          AssetImage('assets/images/w1.jpg'),
          AssetImage('assets/images/w3.jpg'),
          AssetImage('assets/images/w4.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.redAccent[400],
        title: searchBarTxt,
        actions: [
          IconButton(
              icon: srchIcon,
              onPressed: () {
                setState(() {
                  if (this.srchIcon.icon == Icons.search) {
                    this.srchIcon = Icon(Icons.cancel);
                    this.searchBarTxt = TextField(
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    );
                  } else {
                    srchIcon = Icon(Icons.search);
                    searchBarTxt = Text("ShopApp");
                  }
                });
              }),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              })
        ],
      ),
      drawer: Drawer(
        child: DrawerList(),
      ),
      //ListView begins here
      body: Column(
        children: [
          //imageCarousel called
          imageCarousel,
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Container(
                alignment: Alignment.centerLeft, child: Text('Category')),
          ),
          //Horizontal List view begins here for categories
          HorizontalList(),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: Text('Recent Products')),
          ),
          //grid  view begins here
          Flexible(child: Products()),
        ],
      ),
    );
  }
}
