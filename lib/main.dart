import 'package:e_commerce_app/app_screens/product_detail_screen.dart';
import 'package:e_commerce_app/provider_screens/address_provider.dart';
import 'package:e_commerce_app/provider_screens/cart_provider.dart';
import 'package:e_commerce_app/provider_screens/coupon_provider.dart';
import 'package:e_commerce_app/provider_screens/payment_provider.dart';
import 'package:e_commerce_app/provider_screens/product_provider.dart';
import 'package:e_commerce_app/provider_screens/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';
import 'package:e_commerce_app/proxy_model_app/model_class.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<UserProvider>(
            create: (_) => UserProvider(
            userId: 101,
            userName: "Abinaya",
            ),
        ),
        Provider<ProductProvider>(
          create: (_) => ProductProvider(
            productId: 1,
            productName: "iPhone 15 Pro",
            price: 100000,
          ),
        ),
        Provider<CartProvider>(
          create: (_) => CartProvider(
            quantity: 1,
          ),
        ),
        Provider<AddressProvider>(
          create: (_) => AddressProvider(
            street: "Anna Nagar",
            city: "Madurai",
            pinCode: 624302,
          ),
        ),
        Provider<CouponProvider>(
          create: (_) => CouponProvider(
            couponCode: "SAVE200",
            discount: 200,
          ),
        ),
        Provider<PaymentProvider>(
          create: (_) => PaymentProvider(
            paymentMethod: "UPI",
          ),
        ),
        ProxyProvider6<
            UserProvider,
            ProductProvider,
            CartProvider,
            AddressProvider,
            CouponProvider,
            PaymentProvider,
            ModelClass
        >(
          update: (
              context,
              user,
              product,
              cart,
              address,
              coupon,
              payment,
              previousModel,
              ) {
            return ModelClass(
              userName: user.userName,
              productName: product.productName,
              price: product.price,
              quantity: cart.quantity,
              city: address.city,
              discount: coupon.discount.toDouble(),
              paymentMethod: payment.paymentMethod,
            );
          },
        ),
      ],
      child: Sizer(
        builder: (context, orientation, screenType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: ProductDetailScreen(),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
