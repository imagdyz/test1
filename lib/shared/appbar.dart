// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/pages/checkout.dart';
import 'package:test1/provider/cart.dart';

class ProductsAndPrice extends StatelessWidget {
  const ProductsAndPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carttt = Provider.of<Cart>(context);
    return Row(
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 24,
              child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(211, 164, 255, 193),
                      shape: BoxShape.circle),
                  child: Text(
                    "${carttt.itemCount}",
                    style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  )),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckOut(),
                  ),
                );
              },
              icon: Icon(Icons.add_shopping_cart, color: Colors.white),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Text(
            "\$ ${carttt.price}",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
