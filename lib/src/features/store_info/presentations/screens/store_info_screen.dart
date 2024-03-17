import 'package:flutter/material.dart';
import 'package:reserve/src/features/store_feeds/models/store_model.dart';

class StoreInfoScreen extends StatelessWidget {
  const StoreInfoScreen({super.key, required this.store});

  final StoreModel store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(store.name),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Text(store.name),
      ),
    );
  }
}
