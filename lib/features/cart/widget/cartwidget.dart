import 'package:assignmentfinal/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<UserProvider>().user;
    int sum=0;
    user.cart.map((e) =>sum += e['quantity']* e['product']['price'] as int).toList();
    
    return Container(
      margin: const EdgeInsets.all(10),
      child:  Row(
        children: [
          const Text(
            'Total',
          style: TextStyle(
            fontSize: 20,
          ),
          ),
          Text(
            '\$$sum',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
        ],

      ),

    ) ;
  }
}