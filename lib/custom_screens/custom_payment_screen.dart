import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class CustomPaymentScreen extends StatelessWidget {

  final String paymentMethod;

  const CustomPaymentScreen({
    super.key,
    required this.paymentMethod
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('Payment Method'),
          SizedBox(height: 3.0.h,),

          Row(
            children: [
              Icon(Icons.payment),
              SizedBox(width: 2.0.h,),
              Text(paymentMethod),
            ],
          )

        ],
      ),
    );
  }
}
