import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:reserve/src/constants/sizes.dart';

import '../../models/store_model.dart';

class NearMeCard extends StatelessWidget {
  const NearMeCard({super.key, required this.store, this.onPressed});

  final StoreModel store;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    bool isFavorite = true;
    return _buildFoodBeverageCard(context, store, isFavorite);
  }
}

Widget _buildFoodBeverageCard(
    BuildContext context, StoreModel store, bool isFavorite) {
  return Container(
    margin: const EdgeInsets.only(right: DefaultPadding.medium),
    padding: const EdgeInsets.all(DefaultPadding.small),
    constraints: const BoxConstraints(
      maxWidth: 200,
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
              borderRadius: BorderRadius.circular(DefaultBorder.borderRadius),
              child: Image.asset(
                store.image,
                width: 200,
                height: 150,
                fit: BoxFit.cover,
              ),
              // child: Image.network(
              //   store.image,
              //   width: 200,
              //   height: 150,
              //   fit: BoxFit.cover,
              // ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
              color: isFavorite ? Colors.red : Colors.grey,
            ),
          ],
        ),
        const SizedBox(height: DefaultSpacing.small),
        Text(
          store.name,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: DefaultSpacing.small),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              store.address.city!,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey,
                  ),
            ),
            RatingBarIndicator(
              rating: store.rating,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              itemCount: 5,
              itemSize: 12,
            ),
          ],
        ),
      ],
    ),
  );
}
