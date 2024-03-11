import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reserve/src/constants/sizes.dart';
import 'package:reserve/src/constants/strings.dart';
import 'package:reserve/src/features/store_feeds/presentations/widgets/near_me_feed.dart';
import '../../../../constants/colors.dart';
import '../widgets/appointment_feed.dart';
import '../widgets/filter_form.dart';
import '../widgets/for_you_feed.dart';

class StoreFeedScreen extends StatelessWidget {
  const StoreFeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.primary,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                color: Pallete.primary,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Pallete.backgroundColor,
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(DefaultPadding.large),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            WebImageStrings.profileImage),
                      ),
                      const SizedBox(width: DefaultSpacing.medium),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Welcome back'),
                          Text(
                            'John Doe',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Pallete.backgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.notifications, color: Pallete.primary),
                      ),
                    ],
                  ),
                  const SizedBox(height: DefaultPadding.large),
                  const FilterForm(),
                  const SizedBox(height: DefaultPadding.medium),
                  const AppointmentFeed(),
                  const SizedBox(height: DefaultPadding.medium),
                  const NearMeFeed(),
                  const SizedBox(height: DefaultPadding.medium),
                  const ForYouFeed()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
