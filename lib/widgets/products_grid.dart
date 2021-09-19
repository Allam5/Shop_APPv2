import 'package:flutter/material.dart';
import 'package:shop_app/providers/product_providers.dart';
import './product_item.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {


  final bool showFavs;
  ProductsGrid(this.showFavs);


  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);

    //showData if true ....
    final products = showFavs ? productsData.favoriteItems : productsData.items;
    
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products!.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 10),
      itemBuilder: (ctx, i) => ChangeNotifierProvider(
        create: (context) => products[i],
        child: ProductItem(
          // products[i].id,
          // products[i].title,
          // products[i].imageUrl,
        ),
      ),
    );
  }
}
