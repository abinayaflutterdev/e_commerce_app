import 'package:flutter/material.dart';
import 'package:e_commerce_app/custom_screens/custom_product_screen.dart';
import 'package:e_commerce_app/custom_screens/custom_quantity_screens.dart';
import 'package:e_commerce_app/custom_screens/custom_address_screen.dart';
import 'package:e_commerce_app/custom_screens/custom_coupon_screen.dart';
import 'package:e_commerce_app/custom_screens/custom_payment_screen.dart';
import 'package:e_commerce_app/custom_screens/custom_button_screen.dart';
import 'check_out_screen.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Product Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomProductScreen(
                productName: "iPhone 15 pro",
                price: 100000),
            CustomQuantityScreens(
                quantity: 1),
            CustomAddressScreen(
                street: "Anna Nagar",
                city: "Madurai",
                pinCode: 624302),
            CustomCouponScreen(
                couponCode: "SAVE200",
                discount: 200),
            CustomPaymentScreen(
                paymentMethod: "UPI"),
            CustomButtonScreen(
                buttonText: "Proceed to buy",
              onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  CheckOutScreen()));
              },

            )

          ],
        ),
      ),
    );
  }
}
