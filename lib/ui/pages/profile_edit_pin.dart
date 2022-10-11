import 'package:app_ecom_buidwigga/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/buttons.dart';
import '../widgets/forms.dart';

class ProfilEditPin extends StatelessWidget {
  const ProfilEditPin({super.key});

  get whiteColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(
          'EDIT PIN',
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
              children: [
                CustomFormField(
                  title: 'Old Pin',
                ),
                SizedBox(
                  height: 16,
                ),
                CustomFormField(
                  title: 'New Pin',
                ),
                SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Update Now',
                  onPressed: () {
                    Navigator.pushNamed(context, '/edit-profil-pin');
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
