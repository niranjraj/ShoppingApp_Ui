import 'package:flutter/material.dart';
import 'package:shoppingApp/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "assets/images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Nighty",
      "picture": "assets/images/products/dress1.jpg",
      "old_price": 100,
      "price": 55,
    },
    {
      "name": "Female Blazer",
      "picture": "assets/images/products/blazer2.jpeg",
      "old_price": 130,
      "price": 90,
    },
    {
      "name": "High Heels",
      "picture": "assets/images/products/hills1.jpeg",
      "old_price": 220,
      "price": 190,
    },
    {
      "name": "Pants",
      "picture": "assets/images/products/pants1.jpg",
      "old_price": 120,
      "price": 70,
    },
    {
      "name": "Shoes",
      "picture": "assets/images/products/shoe1.jpg",
      "old_price": 190,
      "price": 150,
    },
    {
      "name": "Skirt",
      "picture": "assets/images/products/skt1.jpeg",
      "old_price": 100,
      "price": 60,
    },
    {
      "name": "Pants Casual",
      "picture": "assets/images/products/pants2.jpeg",
      "old_price": 140,
      "price": 100,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              product_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
      {this.product_name,
      this.prod_old_price,
      this.prod_price,
      this.prod_picture});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                //passing the values of product to productDetails
                builder: (context) => ProductDetails(
                      product_detail_name: product_name,
                      product_detail_old_price: prod_old_price,
                      product_detail_picture: prod_picture,
                      product_detail_price: prod_price,
                    ))),
            child: GridTile(
              footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      product_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    title: Container(
                      alignment: Alignment.centerRight,
                      child: Column(
                        children: [
                          Text(
                            "\$$prod_price",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "\$$prod_old_price",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w800,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                    ),
                  )),
              child: Image.asset(prod_picture, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
