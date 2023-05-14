import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';

class CheckoutPage extends StatelessWidget {
  final List<CartItem> cartItems;

  const CheckoutPage({Key? key, required this.cartItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cartItems[index].name),
            trailing: Text('\$${cartItems[index].price.toString}'),
          );
        },
      ),
      // TODO: add more UI for the checkout page
    );
  }
}
