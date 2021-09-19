import 'package:flutter/material.dart';
import 'package:shop_app/providers/product.dart';
import 'product.dart';


class Products with ChangeNotifier{


  //set List of product items
  List<Product> _items = [
    Product(
        id: '22',
        title: 'clothes',
        description: 'women clothes',
        price: 30.5,
        imageUrl:
        'https://i.guim.co.uk/img/media/88f6b98714035656cb18fb282507b60e82edb0d7/0_57_2560_1536/master/2560.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=1513f766aa6c1b3db5350e1580eb640f'
    ),
    Product(
        id: '23',
        title: 'clothes',
        description: 'women clothes',
        price: 30.5,
        imageUrl:
        'https://www.newhope.com/sites/newhope360.com/files/styles/article_featured_retina/public/fast-fashion-getty-promo.jpg?itok=6eAkQofU'

    ),
    Product(
        id: '24',
        title: 'clothes',
        description: 'women clothes',
        price: 30.5,
        imageUrl:
        'https://i.guim.co.uk/img/media/88f6b98714035656cb18fb282507b60e82edb0d7/0_57_2560_1536/master/2560.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=1513f766aa6c1b3db5350e1580eb640f'
    ),
    Product(
        id: '25',
        title: 'Homer Simpson',
        description: 'women clothes',
        price: 30.5,
        imageUrl:
        'https://i.guim.co.uk/img/media/88f6b98714035656cb18fb282507b60e82edb0d7/0_57_2560_1536/master/2560.jpg?width=445&quality=45&auto=format&fit=max&dpr=2&s=1513f766aa6c1b3db5350e1580eb640f'
    ),
    Product(
        id: '26',
        title: 'Lisa Simpson',
        description: 'women clothes',
        price: 30.5,
        imageUrl:
        'https://mtv.mtvnimages.com/uri/mgid:ao:image:mtv.com:282?height=851&width=1512&format=jpg&quality=.7'
    ),
    Product(
        id: '27',
        title: 'Bart Simpson',
        description: 'women clothes',
        price: 30.5,
        imageUrl:
        'https://www.nydailynews.com/resizer/vfmPVXp3Dwpu_Xu3DLCz8C1ifcI=/1200x0/right/top/arc-anglerfish-arc2-prod-tronc.s3.amazonaws.com/public/ADGUPURXZRFWFPMVKZMGUV7PAI.jpg'
    ),
  ];


  var _showFavouriteOnly = false;

  // get and return the list of product items
  List<Product>? get items {
    // if(_showFavouriteOnly){
    //   return _items.where((prodItem) => prodItem.isFavourite).toList();
    // }
     return [..._items];
  }

  List<Product> get favoriteItems{
    return _items.where((prodItem) => prodItem.isFavourite).toList();
  }

  //method to get
  Product findByID (String id)
  {
    return _items
        .firstWhere((prod) => prod.id == id);
  }

  // void showFavouriteOnly(){
  //   _showFavouriteOnly = true;
  //   notifyListeners();
  // }
  //
  // void showAll(){
  //   _showFavouriteOnly = false;
  //   notifyListeners();
  // }

  void addProduct(){
  //  _items.add(value);
    notifyListeners();
  }
}