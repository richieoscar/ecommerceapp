import 'package:ecommerceapp/model/category_model.dart';
import 'package:ecommerceapp/screens/cart/cart_screen.dart';
import 'package:ecommerceapp/screens/catalog/catalog_screen.dart';
import 'package:ecommerceapp/screens/home/home_screen.dart';
import 'package:ecommerceapp/screens/product/product_screen.dart';
import 'package:ecommerceapp/screens/screens.dart';
import 'package:ecommerceapp/screens/user/user_screen.dart';
import 'package:ecommerceapp/screens/wishlist/wishlist_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter{
  static Route onGenerateRoute(RouteSettings settings){
    print("Route generated is: ${settings.name}");

    switch (settings.name) {
      case "/":
      return HomeScreen.route();
      case HomeScreen.routeName:
      return HomeScreen.route(); 
      case CartScreen.routeName:
      return CartScreen.route();
      case UserScreen.routeName:
      return UserScreen.route();
      case ProductScreen.routeName:
      return ProductScreen.route();
      case WishListScreen.routeName:
      return WishListScreen.route();
      case CatalogScreen.routeName:
      return CatalogScreen.route( category: settings.arguments as Category);
        
      default:
      return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: RouteSettings(name: "/error"), builder: (_) => Scaffold(
          appBar: AppBar(title: Text("Error"),),
        ));
  }
  }