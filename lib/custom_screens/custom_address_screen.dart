import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomAddressScreen extends StatelessWidget {

  final String street;
  final String city;
  final int pinCode;

  const CustomAddressScreen({
    super.key,
    required this.street,
    required this.city,
    required this.pinCode
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Delivery Address'),
          SizedBox(height: 3.0.h,),

          Text(street),
          Text(city),
          Text('PIN:$pinCode')
        ],
      ),
    );
  }
}
