import 'package:coffe_app/models/coffeeItems.dart';
import 'package:coffe_app/models/provider_class.dart';
import 'package:coffe_app/tiles/coffe_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addtoCart(CoffeModel coffe) {
    Provider.of<CoffeProvider>(context, listen: false).add(coffe);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeProvider>(
        builder: (context, value, child) => SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Center(
                      child: Text(" How Would like Your Coffe ?",
                          style: TextStyle(fontSize: 30))),
                  Expanded(
                      child: ListView.builder(
                    itemCount: value.shop.length,
                    itemBuilder: (context, index) {
                      CoffeModel state = value.shop[index];

                      return CoffeTile(
                        Myicon: Icon(Icons.add),
                        coffe: state,
                        onpressed: () {
                          addtoCart(state);
                        },
                      );
                    },
                  ))
                ],
              ),
            )));
  }
}
