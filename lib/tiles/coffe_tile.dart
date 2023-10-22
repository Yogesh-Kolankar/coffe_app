import 'package:coffe_app/models/coffeeItems.dart';
import 'package:flutter/material.dart';

class CoffeTile extends StatelessWidget {
  CoffeModel coffe;
  Widget Myicon;
  Function() onpressed;
  CoffeTile({required this.coffe, required this.onpressed ,required this.Myicon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: ListTile(
        title: Text(coffe.name),
        subtitle: Text(coffe.price),
        leading: Image.asset(coffe.imgpath),
        trailing: IconButton(
          icon: Myicon,
          onPressed: onpressed,
        ),
      ),
    );
  }
}
