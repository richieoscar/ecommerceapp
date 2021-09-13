import 'package:ecommerceapp/model/category_model.dart';
import 'package:ecommerceapp/model/model.dart';
import 'package:ecommerceapp/widgets/custom_app_bar.dart';
import 'package:ecommerceapp/widgets/custom_nav_bar.dart';
import 'package:ecommerceapp/widgets/product_card.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  final Category category;
  static const String routeName = "/catalog";

  static Route route({required Category category}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => CatalogScreen(category: category));
  }

  const CatalogScreen({
    required this.category,
    Key? key}) : super(key: key);

   

  @override
  Widget build(BuildContext context) {
     final List<Product> categoryProduct = Product.products.where((product) => product.category == category.name).toList();
    return Scaffold(
      appBar: CustomAppBar(
        title: category.name
      ),
      body: GridView.builder(
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount:categoryProduct.length, 
        itemBuilder: (BuildContext context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProductCard(product: categoryProduct[index]),
          );
        }),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
