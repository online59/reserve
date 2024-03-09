import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reserve/src/constants/colors.dart';
import 'package:reserve/src/constants/sizes.dart';
import 'package:reserve/src/constants/strings.dart';
import 'package:reserve/src/features/authentication/presentation/screens/signup_screen.dart';
import 'package:reserve/src/features/authentication/presentation/widgets/login_field.dart';
import 'package:reserve/src/features/store_feeds/presentations/screens/store_feeds_screen.dart';

import '../widgets/login_form_submit_button.dart';
import '../widgets/login_with_social_button.dart';
import 'forget_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(DefaultPadding.large),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  LoginStrings.reserve.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    fontFamily: GoogleFonts.cabin().fontFamily,
                  ),
                ),
                const SizedBox(height: 50),
                const SocialButton(
                    iconPath: LoginImageStrings.googleLogo,
                    label: LoginStrings.continueWithGoogle),
                const SizedBox(height: DefaultSpacing.medium),
                const SocialButton(
                  iconPath: LoginImageStrings.facebookLogo,
                  label: LoginStrings.continueWithFacebook,
                ),
                const SizedBox(height: DefaultSpacing.small),
                Text(
                  LoginStrings.or,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: DefaultSpacing.small),
                LoginField(
                  hintText: LoginStrings.email,
                  controller: _emailController,
                ),
                const SizedBox(height: DefaultSpacing.medium),
                LoginField(
                  hintText: LoginStrings.password,
                  controller: _passwordController,
                  isObscure: true,
                ),
                const SizedBox(height: DefaultSpacing.large),
                GradientButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const StoreFeedScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: DefaultSpacing.medium),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ForgetPasswordScreen(),
                          ),
                        );
                      },
                      child: Text(
                        LoginStrings.forgotPassword,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ),
                        );
                      },
                      child: Text(
                        LoginStrings.dontHaveAnAccount,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
