import 'package:ecommerceapp/widgets/custom_app_bar.dart';
import 'package:ecommerceapp/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = "/product";

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => ProductScreen());
  }

  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Tropico",
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
