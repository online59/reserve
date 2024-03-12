import 'package:flutter/material.dart';
import 'package:reserve/src/constants/strings.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../models/appointment_model.dart';
import 'appointment_card.dart';

class AppointmentFeed extends StatelessWidget {
  const AppointmentFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(DefaultPadding.medium),
      constraints: const BoxConstraints(
        maxHeight: 700,
        minHeight: 0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DefaultBorder.borderRadius),
        color: Pallete.whiteColor,
      ),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Appointment",
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
                  final appointment = AppointmentModel(
                    id: '$index',
                    owner: 'John Doe',
                    storeName: 'Starbucks',
                    storeLocation: 'New York',
                    storeImage: WebImageStrings.storeImage,
                    storePhone: '+66 83-855-9919',
                    guests: 2,
                    person: 'John Doe',
                    date: DateTime.utc(2024, 03, index),
                    time: '10:00 AM',
                    type: 'Dine In',
                    status: AppointmentStatus.randomAppointmentStatus(),
                  );
                  return AppointmentCard(
                    appointment: appointment,
                  );
                },
                itemCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}