import 'package:app_ecom_buidwigga/shared/theme.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HomeSevices extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTap;
  const HomeSevices(
      {super.key, required this.iconUrl, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
              color: whiteColor, borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Image.asset(
              iconUrl,
              width: 26,
            ),
          ),
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 14,
            fontWeight: medium,
          ),
        ),
      ],
    );
  }
}
