import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomCouponScreen extends StatelessWidget {

  final String couponCode;
  final int discount;

  const CustomCouponScreen({
    super.key,
    required this.couponCode,
    required this.discount

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('Coupon'),
          SizedBox(height: 3.0.h,),
          
          Text("Code: $couponCode"),
          Text("Discount: $discount")
          
        ],
      ),
    );
  }
}
