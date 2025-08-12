import 'dart:developer';
import '../../../main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../../widget/button/mp_button.dart';
import '../../../widget/textfield/mp_text_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isSignup = true;
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: mq.width * 0.06),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: mq.height * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ChoiceChip(
                      label: Text(
                        'Login',
                        style: TextStyle(
                          color: !isSignup
                              ? CupertinoColors.white
                              : CupertinoColors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      selected: !isSignup,
                      selectedColor: Colors.red,
                      backgroundColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(color: Colors.red),
                      ),
                      onSelected: (selected) {
                        setState(() => isSignup = false);
                      },
                    ),
                    const SizedBox(width: 12),
                    ChoiceChip(
                      label: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: isSignup ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      selected: isSignup,
                      selectedColor: Colors.red,
                      backgroundColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(color: Colors.red),
                      ),
                      onSelected: (selected) {
                        setState(() => isSignup = true);
                      },
                    ),
                  ],
                ),

                SizedBox(height: mq.height * 0.06),

                /// Header Text
                Text(
                  isSignup ? "Create Account" : "Welcome Back!",
                  style: TextStyle(
                    fontSize: mq.width * 0.07,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: mq.height * 0.012),
                Text(
                  isSignup
                      ? "Sign up to get started"
                      : "Login to your account",
                  style: TextStyle(
                    fontSize: mq.width * 0.04,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: mq.height * 0.04),

                /// Email Field
                MTextField(
                  controller: emailController,
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email, size: mq.width * 0.06),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: mq.height * 0.02),

                /// Password Field
                MTextField(
                  controller: passwordController,
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock, size: mq.width * 0.06),
                  keyboardType: TextInputType.visiblePassword,
                ),
                SizedBox(height: mq.height * 0.05),

                /// Submit Button
                SizedBox(
                  width: double.infinity,
                  height: mq.height * 0.07,
                  child: MpButton(
                    text: isSignup ? 'S I G N  U P' : 'L O G I N',
                    onPressed: () {
                      // TODO: Add signup/login logic here
                      final mode = isSignup ? 'Signup' : 'Login';
                      log('Pressed $mode');
                    },
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
