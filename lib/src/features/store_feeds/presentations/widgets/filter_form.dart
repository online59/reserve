
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import 'filter_field.dart';

class FilterForm extends StatelessWidget {
  const FilterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(DefaultPadding.medium),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius:
        BorderRadius.circular(ButtonSizes.borderRadius),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const FilterField(
            hintText: 'Search for stores',
            leading: Icons.search,
          ),
          const SizedBox(
            height: DefaultSpacing.small,
          ),
          FilterField(
            hintText: 'Location, switch on for near me',
            leading: Icons.location_on,
            trailing: Switch(
              value: true,
              onChanged: (value) {
                // ignore: avoid_print
                print(value);
              },
              activeColor: Pallete.primary,
            ),
          ),
          const SizedBox(
            height: DefaultSpacing.small,
          ),
          Row(
            children: [
              const Expanded(
                child: FilterField(
                  hintText: 'Date',
                  leading: Icons.calendar_today,
                ),
              ),
              const SizedBox(
                width: DefaultSpacing.small,
              ),
              Expanded(
                child: FilterField(
                  hintText: 'Guests',
                  leading: Icons.people,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: DefaultSpacing.small,
          ),
          Container(
            width: double.infinity,
            height: ButtonSizes.height,
            decoration: BoxDecoration(
              color: Pallete.primary,
              borderRadius:
              BorderRadius.circular(ButtonSizes.borderRadius),
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Search'.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(
                  color: Pallete.whiteColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}