import 'package:ecommerceapp/config/theme.dart';
import 'package:ecommerceapp/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: 120,
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 60,
          child: Container(
            width: MediaQuery.of(context).size.width / 2.5,
            height: 60,
            decoration: BoxDecoration(color: Colors.black.withAlpha(80)),
          ),
        ),
        Positioned(
          top: 65,
          left: 5,
          child: Container(
            width: MediaQuery.of(context).size.width / 2.5 - 10,
            height: 70,
            decoration: BoxDecoration(color: Colors.black.withAlpha(70)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.name,
                          style: textTheme()
                              .headline4!
                              .copyWith(color: Colors.white)),
                      Text(
                        '\$${product.price}',
                        style: textTheme()
                            .headline5!
                            .copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_circle, color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
