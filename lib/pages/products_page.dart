import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductsPage extends StatefulWidget {
  @override
  ProductsPageState createState() => ProductsPageState();
}

class ProductsPageState extends State<ProductsPage> {
  @override
  void initState() {
    super.initState();
    _getUser();
  }

  _getUser() async {
    final prefs = await SharedPreferences.getInstance();
    var storeUser = prefs.getString('user');
    print(json.decode(storeUser));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('products'),
        leading: Icon(Icons.email),
        actions: <Widget>[
          Icon(Icons.face),
          Icon(Icons.add),
        ],
      ),
      body: Center(
        child: Text('products'),
      ),
    );
  }
}
