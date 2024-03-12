import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:reserve/src/constants/colors.dart';
import 'package:reserve/src/constants/sizes.dart';
import 'package:reserve/src/features/store_feeds/models/appointment_model.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key, required this.appointment});

  final AppointmentModel appointment;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: DefaultPadding.medium),
      padding: const EdgeInsets.all(DefaultPadding.medium),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DefaultBorder.borderRadius),
        border: Border.all(
          color: Pallete.borderColor,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Pallete.backgroundColor,
                ),
                icon: appointment.status.icon,
                label: Text(appointment.status.value,
                    style: Theme.of(context).textTheme.bodySmall),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Pallete.backgroundColor,
                ),
                child: Text("At ${appointment.storeLocation}",
                    style: Theme.of(context).textTheme.bodySmall),
              ),
            ],
          ),
          const SizedBox(height: DefaultSpacing.medium),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                margin: const EdgeInsets.only(right: DefaultSpacing.small),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(DefaultBorder.borderRadius),
                  image: DecorationImage(
                    image: NetworkImage(appointment.storeImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    appointment.storeName,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    appointment.type,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              // Chat button
              const Spacer(),
              IconButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Pallete.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45),
                  ),
                ),
                icon: Icon(
                  Icons.chat_bubble_outline_rounded,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ],
          ),
          const SizedBox(height: DefaultSpacing.medium),
          SizedBox(
            height: DefaultBoxHeight.small,
            width: double.infinity,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Pallete.backgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.calendar_today_rounded),
              label: Text(
                  appointment.formattedDate,
                  style: Theme.of(context).textTheme.bodySmall,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
