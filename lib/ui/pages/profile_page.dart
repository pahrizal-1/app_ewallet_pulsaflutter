import 'package:app_ecom_buidwigga/shared/theme.dart';
import 'package:app_ecom_buidwigga/ui/widgets/buttons.dart';
import 'package:app_ecom_buidwigga/ui/widgets/profile_menu_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        children: [
          // ignore: prefer_const_constructors
          SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/img_profile.png'))),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: whiteColor),
                      child: Icon(
                        Icons.check_circle,
                        size: 24,
                        color: greenColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Shayna Hanna',
                  style:
                      blackTextStyle.copyWith(fontWeight: medium, fontSize: 18),
                ),
                const SizedBox(
                  height: 40,
                ),
                MenuItemsProfil(
                  iconUrl: 'assets/ic_edit_profile.png',
                  title: 'Edit Profile',
                  onTap: () async {
                    if (await Navigator.pushNamed(context, '/pin-page') ==
                        true) {
                      Navigator.pushNamed(context, '/edit-profil-page');
                    }
                  },
                ),
                MenuItemsProfil(
                  iconUrl: 'assets/ic_pin.png',
                  title: 'My Pin',
                  onTap: () {},
                ),
                MenuItemsProfil(
                  iconUrl: 'assets/ic_wallet.png',
                  title: 'Wallet Settings',
                  onTap: () {},
                ),
                MenuItemsProfil(
                  iconUrl: 'assets/ic_my_rewards.png',
                  title: 'My Rewads',
                  onTap: () {},
                ),
                MenuItemsProfil(
                  iconUrl: 'assets/ic_help.png',
                  title: 'Help Center',
                  onTap: () {},
                ),
                MenuItemsProfil(
                  iconUrl: 'assets/ic_logout.png',
                  title: 'Log Out',
                  onTap: () {},
                )
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 87,
          ),
          CustomTextButton(
            title: 'Report a Problem',
            onPressed: () {},
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
