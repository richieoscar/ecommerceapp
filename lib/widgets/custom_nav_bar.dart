import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                icon: Icon(Icons.home)),
            IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, "/cart");
                },
                icon: Icon(Icons.shopping_cart)),
            IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, "/user");
                },
                icon: Icon(Icons.person))
          ],
        ),
      ),
    );
  }
}
