import 'package:ecommerceapp/widgets/custom_app_bar.dart';
import 'package:ecommerceapp/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = "/catalog";

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => CatalogScreen());
  }

  const CatalogScreen({Key? key}) : super(key: key);

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
