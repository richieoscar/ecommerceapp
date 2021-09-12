import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceapp/config/theme.dart';
import 'package:ecommerceapp/model/category_model.dart';
import 'package:ecommerceapp/model/product_model.dart';
import 'package:ecommerceapp/widgets/custom_app_bar.dart';
import 'package:ecommerceapp/widgets/custom_nav_bar.dart';
import 'package:ecommerceapp/widgets/hero_carousel.dart';
import 'package:ecommerceapp/widgets/product_card.dart';
import 'package:ecommerceapp/widgets/section_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class HomeScreen extends StatelessWidget {
  static const String routeName = "/";

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen());
  }
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(
        title: "Shop Tropico",
      ),
      body: Column(
        children: [
          Container(
              child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.7,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              autoPlay: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,   
            ),
            items: Category.categories.map((category) => HeroCarouselCard(category: category)).toList()
          )),

        SectionTitle(title: "RECOMMENDED",),

        //ProductCard(product:Product.products[0],)
        //product carousel
        SizedBox(
          height: 120,
          child: ListView.builder(
            padding:EdgeInsets.symmetric(horizontal:20.0),
            shrinkWrap: true,
            itemCount: Product.products.length,
            scrollDirection: Axis.horizontal,
            itemBuilder:(context, index){
              return Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: ProductCard(product: Product.products[index]),
              );
            } ),
        )
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}







