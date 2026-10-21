import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomProductScreen extends StatelessWidget {

  final String productName;
  final double price;

  const CustomProductScreen({
    super.key,
    required this.productName,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(productName),
          SizedBox(height: 2.0.h,),
          Text("₹$price")
        ],
      )
    );
  }
}
