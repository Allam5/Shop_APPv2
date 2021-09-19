import 'package:flutter/material.dart';
import './screens/products_overview_screen.dart';
import './screens/product_details_screen.dart';
import './providers/product_providers.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        title: 'My Shop',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: ProductsOverView(),
        routes:
        {
          ProductDetailsScreen.routeName: (context) =>ProductDetailsScreen(),
        },
      ),
    );
  }
}

