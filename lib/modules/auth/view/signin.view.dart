import 'package:flutter/material.dart';
import 'package:login/widgets/custom.button.dart';
import 'package:login/widgets/custom.textfield.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: const Center(
          child: Text('Signin'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              controller: TextEditingController(),
              keyboardType: TextInputType.emailAddress,
              label: 'Enter Your Email',
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              controller: TextEditingController(),
              keyboardType: TextInputType.visiblePassword,
              label: 'Enter Your Password',
              textInputAction: TextInputAction.done,
            ),
            const SizedBox(height: 20),
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}
