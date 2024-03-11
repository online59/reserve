import 'package:flutter/material.dart';
import 'package:reserve/src/constants/strings.dart';
import 'package:reserve/src/features/store_feeds/models/store_model.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import 'for_you_card.dart';


class ForYouFeed extends StatelessWidget {
  const ForYouFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(DefaultPadding.medium),
      constraints: const BoxConstraints(
        maxHeight: 800,
        minHeight: 0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DefaultBorder.borderRadius),
        color: Pallete.whiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "For you",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See more",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Pallete.primary,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: DefaultSpacing.medium),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                
                final store = StoreModel(
                  id: 1,
                  name: 'Store Name',
                  address: AddressModel(
                    city: 'City Name',
                    state: 'State Name',
                    country: 'Country Name',
                    zip: 'Zip Code',
                  ),
                  rating: 4.5,
                  image: WebImageStrings.storeImage,
                  phone: '1234567890',
                  email: 'store@email.com',
                  category: StoreCategory.random(),
                  createdAt: '2022-01-01',
                  updatedAt: '2022-01-01',
                  type: StoreType.highlighted,
                );
                return ForYouCard(store: store);
              },
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
