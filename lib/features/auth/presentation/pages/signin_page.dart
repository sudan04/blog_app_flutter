import 'package:blog_app/core/theme/app_palette.dart';
import 'package:blog_app/features/auth/domain/validators/auth_validator.dart';
import 'package:blog_app/features/auth/presentation/pages/signup_page.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign In.",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: AppPallete.whiteColor,
                  ),
                ),
                SizedBox(height: 30),

                SizedBox(height: 15),
                AuthField(
                  controller: emailController,
                  labelText: "Email",
                  hintText: "Enter your email",
                  validator: AuthValidator.validateEmail,
                ),
                SizedBox(height: 15),

                AuthField(
                  controller: passwordController,
                  labelText: "Password",
                  hintText: "Enter your password",
                  isObscuredText: true,
                  validator: AuthValidator.validatePassword,
                ),
                SizedBox(height: 20),

                AuthGradientButton(
                  buttonText: "Sign In",
                  onTap: () => _formKey.currentState!.validate(),
                ),
                SizedBox(height: 20),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        TextSpan(
                          text: "Sign Up",
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(color: AppPallete.gradient2),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
