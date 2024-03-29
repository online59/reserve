import 'package:flutter/material.dart';
import 'package:reserve/src/constants/strings.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../../store_info/presentations/screens/store_info_screen.dart';
import '../../models/store_model.dart';
import 'near_me_card.dart';

class NearMeFeed extends StatelessWidget {
  const NearMeFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(DefaultPadding.medium),
      constraints: const BoxConstraints(
        maxHeight: 320,
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
                "Near me",
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
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {

                // Sample of Store model
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

                return InkWell(
                  onTap: () {
                    // Navigate to store info screen
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return StoreInfoScreen(store: store);
                        },
                      ),
                    );
                  },
                  child: NearMeCard(
                    store: store,
                  ),
                );
              },
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
