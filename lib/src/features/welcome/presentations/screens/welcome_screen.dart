import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:reserve/src/constants/colors.dart';
import 'package:reserve/src/constants/sizes.dart';
import 'package:reserve/src/constants/strings.dart';
import 'package:reserve/src/utils/themes/elevated_button_theme.dart';

import '../../../authentication/presentation/screens/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(DefaultPadding.large),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Text(
                'Welcome to Reserve',
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 20),
              Expanded(child: Lottie.asset(LottieImageStrings.welcome)),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 56.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      fixedSize: const Size(double.infinity, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(ButtonSizes.borderRadius),
                        side: const BorderSide(
                          color: Pallete.primary,
                          width: ButtonSizes.borderWidth,
                        ),
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const LoginScreen();
                          },
                        ),
                      );
                    },
                    child: Text('Login'.toUpperCase()),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
