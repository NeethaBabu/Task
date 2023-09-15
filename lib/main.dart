import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskkk/ui/productlistscreen.dart';

import 'Api/productprovider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Product App',
        home: ProductListScreen(),
      ),
    );
  }
}



