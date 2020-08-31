import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var products_in_cart = [
    {
      "name": "Blazer",
      "picture": "assets/images/products/blazer1.jpeg",
      "price": 85,
      "size": "XL",
      "color": "Black",
      "quantity": 1,
    },
    {
      "name": "Nighty",
      "picture": "assets/images/products/dress1.jpg",
      "price": 55,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products_in_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_product_name: products_in_cart[index]['name'],
            cart_prod_color: products_in_cart[index]['color'],
            cart_prod_picture: products_in_cart[index]['picture'],
            cart_prod_price: products_in_cart[index]['price'],
            cart_prod_qty: products_in_cart[index]['quantity'],
            cart_prod_size: products_in_cart[index]['size'],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_prod_picture;
  final cart_prod_size;
  final cart_prod_price;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product(
      {this.cart_product_name,
      this.cart_prod_color,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_qty,
      this.cart_prod_size});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: Image.asset(
            cart_prod_picture,
            fit: BoxFit.fill,
          ),
          title: Text(cart_product_name),
          subtitle: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(2),
                    child: Text("Size:"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      cart_prod_size,
                      style: TextStyle(color: Colors.redAccent[400]),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 8, 8, 8),
                    child: Text("Color:"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: Text(
                      cart_prod_color,
                      style: TextStyle(color: Colors.redAccent[400]),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  '\$$cart_prod_price',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent[400]),
                ),
              )
            ],
          ),
          // adding quantity to the products
          trailing: FittedBox(
            fit: BoxFit.fill,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 2, 50, 50),
                  child: IconButton(
                      icon: Icon(Icons.arrow_drop_up, size: 100),
                      onPressed: () {}),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 30, 30, 30),
                  child: Text(
                    cart_prod_qty.toString(),
                    style: TextStyle(
                      fontSize: 80,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 2, 50, 50),
                  child: IconButton(
                      icon: Icon(Icons.arrow_drop_down, size: 100),
                      onPressed: () {}),
                ),
              ],
            ),
          )),
    );
  }
}
