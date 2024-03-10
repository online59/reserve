import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';

class ForYouCard extends StatelessWidget {
  const ForYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: DefaultPadding.medium),
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
                child: Image.network(
                  'https://imageio.forbes.com/specials-images/imageserve/5babb7f1a7ea4342a948b79a/0x0.jpg',
                  width: 200,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
                color: Colors.red,
              ),
            ],
          ),
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
    );
  }
}