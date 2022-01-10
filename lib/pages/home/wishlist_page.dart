import 'package:ecommerce/theme.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatefulWidget {
  @override
  _WishlistPageState createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
          child: Text(
        "Wishlist Page",
        style: TextStyle(color: Colors.red),
      )),
    );
  }
}
