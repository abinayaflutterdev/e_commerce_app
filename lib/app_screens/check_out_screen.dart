import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:e_commerce_app/proxy_model_app/model_class.dart';
import 'package:provider/provider.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {

    final model = context.watch<ModelClass>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Check Out"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
        children: [
          Text(model.userName),
          Text(model.productName),
          Text(model.price.toString()),
          Text(model.quantity.toString()),
          Text(model.city),
          Text(model.discount.toString()),
          Text(model.paymentMethod),
          SizedBox(width: 3.0.w,),
          ElevatedButton(
              onPressed: null,
              child: Text("Place Order"))
        ],
      ),
    );
  }
}
