import 'package:flutter/material.dart';
import 'homepage.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  final product_detail_old_price;
  final product_detail_price;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_old_price,
      this.product_detail_picture,
      this.product_detail_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.redAccent[400],
        title: InkWell(
            child: Text('ShopApp'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()))),
        actions: [
          IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                          child: Text(
                        "\$${widget.product_detail_old_price}",
                        style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      )),
                      Expanded(
                          child: Text(
                        "\$${widget.product_detail_price}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent[400]),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ),

          //========== Buttons=========
          Row(
            children: [
              //===========size selection=====
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Size'),
                            content: Text('Choose the Size'),
                            actions: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(child: Text('Size')),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Color'),
                            content: Text('Choose the Color'),
                            actions: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(child: Text('Color')),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Quantity'),
                            content: Text('Choose the Quantity'),
                            actions: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(child: Text('Qty')),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //========== Button for buy now=========
          Row(
            children: [
              //===========Buy now=====
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.redAccent[400],
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text('Buy Now'),
                ),
              ),

              IconButton(
                icon: Icon(Icons.add_shopping_cart),
                onPressed: () {},
                color: Colors.redAccent[400],
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {},
                color: Colors.redAccent[400],
              )
            ],
          ),
          Divider(),
          ListTile(
            title: Text("Product details"),
            subtitle: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  "Product name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.product_detail_name),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  "Product brand",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Brand X"),
              )
            ],
          ),

          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  "Product condition",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Conditon"),
              )
            ],
          ),

          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Similar Products"),
          ),

          Container(
            height: 300,
            child: SimilarProducts(),
          )
        ],
      ),
    );
  }
}

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "assets/images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
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
          return Similar_single_prod(
            product_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  final product_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod(
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
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        product_name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      )),
                      Text(
                        "\$$prod_price",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              child: Image.asset(prod_picture, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
