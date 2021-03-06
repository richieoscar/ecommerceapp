import 'package:ecommerceapp/config/theme.dart';
import 'package:ecommerceapp/model/category_model.dart';
import 'package:ecommerceapp/screens/catalog/catalog_screen.dart';
import 'package:flutter/material.dart';
class HeroCarouselCard extends StatelessWidget {
  final Category category;
  const HeroCarouselCard({
    required this.category,
     Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      child: Container(
                  margin: EdgeInsets.all(5.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child: Stack(
                        children: <Widget>[
                          Image.network(category.imageUrl, fit: BoxFit.cover, width: 1000.0),
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            right: 0.0,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(200, 0, 0, 0),
                                    Color.fromARGB(0, 0, 0, 0)
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              child: Text(
                                category.name,
                                style: textTheme().headline2!.copyWith(color: Colors.white)
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                onTap: (){
                  Navigator.pushNamed(context, CatalogScreen.routeName, arguments: category);
                },
    );
  }}