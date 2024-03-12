import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reserve/src/features/store_feeds/models/store_model.dart';

import '../../../../constants/sizes.dart';

class ForYouCard extends StatelessWidget {
  const ForYouCard({
    super.key,
    required this.store,
  });

  final StoreModel store;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: DefaultPadding.medium),
      constraints: const BoxConstraints(
        minWidth: double.infinity,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DefaultBorder.borderRadius),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(DefaultBorder.borderRadius),
                  topRight: Radius.circular(DefaultBorder.borderRadius),
                ),
                child: Image.network(
                  store.image,
                  fit: BoxFit.fill,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
                color: Colors.red,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(DefaultPadding.small),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: DefaultSpacing.small),
                Text(
                  'Store Name',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: DefaultSpacing.small),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'City Name',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.grey,
                          ),
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
