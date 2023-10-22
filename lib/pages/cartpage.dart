import 'package:coffe_app/models/coffeeItems.dart';
import 'package:coffe_app/models/provider_class.dart';
import 'package:coffe_app/tiles/coffe_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removefromCart(CoffeModel coffe) {
    Provider.of<CoffeProvider>(context, listen: false).remove(coffe);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeProvider>(
        builder: (context, value, child) => SafeArea(
                child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      "Your cart",
                      style: TextStyle(fontSize: 30),
                    ),
                    Expanded(
                        child: ListView.builder(
                      itemCount: value.cart.length,
                      itemBuilder: (context, index) {
                        CoffeModel state = value.cart[index];

                        CoffeTile(
                          Myicon: Icon(Icons.delete),
                          coffe: state,
                          onpressed: () {
                            removefromCart(state);
                          },
                        );
                      },
                    ))
                  ],
                ),
              ),
            )));
  }
}
