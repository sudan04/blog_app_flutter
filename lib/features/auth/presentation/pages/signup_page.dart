import 'package:blog_app/core/theme/app_palette.dart';
import 'package:blog_app/features/auth/domain/validators/auth_validator.dart';
import 'package:blog_app/features/auth/presentation/pages/signin_page.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                  "Sign up.",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: AppPallete.whiteColor,
                  ),
                ),
                SizedBox(height: 30),

                AuthField(
                  controller: nameController,
                  labelText: "Name",
                  hintText: "Enter your name",
                  validator: AuthValidator.validateName,
                ),

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
                  buttonText: "Sign Up",
                  onTap: () => _formKey.currentState!.validate(),
                ),
                SizedBox(height: 20),

                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SigninPage()),
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      text: "Already have an account? ",
                      style: Theme.of(context).textTheme.titleMedium,
                      children: [
                        TextSpan(
                          text: "Sign In",
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
