import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/product_providers.dart';

class ProductDetailsScreen extends StatelessWidget {
  // String title;
  //
  // ProductDetailsScreen(this.title);

  static const routeName = '/product_detail';

  @override
  Widget build(BuildContext context) {
    //the id !!
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findByID(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title!),
      ),
    );
  }
}
