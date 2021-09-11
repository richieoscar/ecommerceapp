import 'package:flutter/material.dart';
import 'package:ecommerceapp/widgets/custom_app_bar.dart';
import 'package:ecommerceapp/widgets/custom_nav_bar.dart';


class CartScreen extends StatelessWidget {
  static const String routeName = "/cart";

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), 
        builder: (_) => CartScreen());
  }

  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Cart",
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
