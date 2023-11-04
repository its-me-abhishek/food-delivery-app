import 'package:flutter/material.dart';
import 'package:food_app/screens/cart_item.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
        ),
        body: ListView.builder(
          itemCount: cartItems.length,
          itemBuilder: (context, index) {
            final cartItem = cartItems[index];
            return ListTile(
              title: Text(cartItem.title),
              subtitle: Text('Quantity: ${cartItem.quantity}'),
              trailing: IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {
                  removeItem(index);
                },
              ),
            );
          },
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          child: OutlinedButton(
            child: const Text("Buy Now"),
            onPressed: () {},
          ),
        ));
  }

  void removeItem(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }
}
