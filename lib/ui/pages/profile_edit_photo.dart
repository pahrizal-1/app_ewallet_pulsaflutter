import 'package:app_ecom_buidwigga/shared/theme.dart';
import 'package:app_ecom_buidwigga/ui/widgets/buttons.dart';
import 'package:app_ecom_buidwigga/ui/widgets/forms.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(
          'Edit Photo',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40),
            padding: const EdgeInsets.all(22),
            width: 327,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: Column(
              children: const [
                CustomFormField(
                  title: 'Username',
                ),
                SizedBox(
                  height: 16,
                ),
                CustomFormField(
                  title: 'Full Name',
                ),
                SizedBox(
                  height: 16,
                ),
                CustomFormField(
                  title: 'Email Address',
                ),
                SizedBox(
                  height: 16,
                ),
                CustomFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFilledButton(title: 'Update Now')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
