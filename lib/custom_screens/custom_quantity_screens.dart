import 'package:flutter/material.dart';

class CustomQuantityScreens extends StatelessWidget {

  final int quantity;

  const CustomQuantityScreens({
    super.key,
    required this.quantity
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.remove)),
        Text(quantity.toString()),
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.add))

      ],
    );
  }
}
