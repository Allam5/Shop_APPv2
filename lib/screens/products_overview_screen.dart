import 'package:flutter/material.dart';

import '../widgets/products_grid.dart';

enum FilterOptions {
  Favorites,
  All,
}

class ProductsOverView extends StatefulWidget {

  @override
  _ProductsOverViewState createState() => _ProductsOverViewState();
}

class _ProductsOverViewState extends State<ProductsOverView> {

  var _showOnlyFavourite = false ;
  @override
  Widget build(BuildContext context) {

 //   final productsContainer  = Provider.of<Products>(context , listen: false);


    return Scaffold(
      appBar: AppBar(
        title: Text('My shop App'),
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if(selectedValue == FilterOptions.Favorites)
                {
                  _showOnlyFavourite =true;
                }
                else
                {
                  _showOnlyFavourite =false;
                }
              });

            },
            icon: Icon(Icons.more_vert),

            itemBuilder: (context) =>
            [
              PopupMenuItem(
                  child: Text('Only favourite'),
                  value: FilterOptions.Favorites),
              PopupMenuItem(
                  child: Text('show All'),
                  value: FilterOptions.All),
            ],
          ),
        ],
      ),
      body: ProductsGrid(_showOnlyFavourite),
    );
  }
}


