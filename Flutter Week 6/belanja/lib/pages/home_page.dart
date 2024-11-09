import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/product_card.dart';
import 'package:belanja/widgets/footer.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000, photo: 'assets/sugar.jpg', stock: 10, rating: 4.5),
    Item(name: 'Salt', price: 2000, photo: 'assets/salt.jpg', stock: 20, rating: 4.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ProductCard(
                  item: item,
                  onTap: () {
                    context.push('/item', extra: item); // Menggunakan push untuk menambah ke stack
                  },
                );
              },
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
