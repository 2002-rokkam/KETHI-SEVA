

/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/IP.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/cart_provider.dart';
import 'package:flutter_application_1/pp2/product1.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CartProvider>(
          create: (_) => CartProvider(),
        ),
        // Add any additional providers here
      ],
      child: Consumer<CartProvider>(
        builder: (context, cart, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Cart'),
            ),
            body: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                final item = cart.items[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text('\$${item.price.toStringAsFixed(8)}'),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle_outline),
                    onPressed: () => cart.removeItem(item),
                  ),
                );
              },
            ),
            bottomNavigationBar: BottomAppBar(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total: \$${cart.totalPrice.toStringAsFixed(2)}'),
                    ElevatedButton(
                      onPressed: () {
                        // Navigate back to the previous page with the cart items
                        Navigator.pop(context, cart.items);
                      },
                      child: Text('Checkout'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';

class CartItem {
  final String name;
  final int price;
  int quantity;

  CartItem({required this.name, required this.price, this.quantity = 1});
}

class Cart {
  List<CartItem> items = [];

  void addItem(CartItem item) {
    // Check if the item is already in the cart
    final index = items.indexWhere((i) => i.name == item.name);
    if (index != -1) {
      // Update the quantity of the existing item
      items[index].quantity += item.quantity;
    } else {
      // Add the new item to the cart
      items.add(item);
    }
  }

  void removeItem(String name) {
    items.removeWhere((i) => i.name == name);
  }

  void updateItem(String name, int quantity) {
    final index = items.indexWhere((i) => i.name == name);
    if (index != -1) {
      items[index].quantity = quantity;
    }
  }
}

class CartPage extends StatefulWidget {
  final Cart cart;

  CartPage({required this.cart});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late final Cart cart;

  @override
  void initState() {
    super.initState();
    cart = widget.cart;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: cart.items.isEmpty
          ? Center(child: Text('Your cart is empty'))
          : ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                final item = cart.items[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text('\$${item.price}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            if (item.quantity > 1) {
                              cart.updateItem(item.name, item.quantity - 1);
                            } else {
                              cart.removeItem(item.name);
                            }
                          });
                        },
                      ),
                      Text(item.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            cart.updateItem(item.name, item.quantity + 1);
                          });
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
