import 'package:flutter/material.dart';
import 'package:shoppingApp/pages/cart.dart';
import 'package:shoppingApp/pages/accountpage.dart';

class DrawerList extends StatefulWidget {
  @override
  _DrawerListState createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      //===drawers starts here=======
      children: [
        UserAccountsDrawerHeader(
          accountName: Text('Niranj'),
          accountEmail: Text('123@gmail.com'),
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
            color: Colors.redAccent[400],
          ),
        ),
        ListTile(
          title: Text('Home Page'),
          leading: Icon(
            Icons.home,
            color: Colors.redAccent[400],
          ),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        ListTile(
          title: Text('My Account'),
          leading: Icon(
            Icons.person,
            color: Colors.redAccent[400],
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Accounts()));
          },
        ),
        ListTile(
          title: Text('My Orders'),
          leading: Icon(
            Icons.shopping_basket,
            color: Colors.redAccent[400],
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text('Shopping Cart'),
          leading: Icon(
            Icons.shopping_cart,
            color: Colors.redAccent[400],
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cart()));
          },
        ),
        ListTile(
          title: Text('Favourites'),
          leading: Icon(
            Icons.favorite,
            color: Colors.redAccent[400],
          ),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text('Settings'),
          leading: Icon(
            Icons.settings,
            color: Colors.grey[600],
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text('About'),
          leading: Icon(
            Icons.help,
            color: Colors.grey[600],
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
