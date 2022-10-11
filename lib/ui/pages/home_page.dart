import 'package:app_ecom_buidwigga/shared/theme.dart';
import 'package:app_ecom_buidwigga/ui/widgets/home_sevicer.dart';
import 'package:app_ecom_buidwigga/ui/widgets/home_tips_item.dart';
import 'package:app_ecom_buidwigga/ui/widgets/home_transion.dart';
import 'package:app_ecom_buidwigga/ui/widgets/home_user_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        elevation: 0,
        child: BottomNavigationBar(
          backgroundColor: whiteColor,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle:
              blueTextStyle.copyWith(fontSize: 10, fontWeight: medium),
          unselectedLabelStyle:
              blueTextStyle.copyWith(fontSize: 10, fontWeight: medium),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_overview.png',
                color: blueColor,
                width: 20,
              ),
              label: 'Overview',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_history.png',
                width: 20,
              ),
              label: 'history',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_statistic.png',
                width: 20,
              ),
              label: 'Overview',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_reward.png',
                width: 20,
              ),
              label: 'Overview',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        onPressed: () {},
        child: Image.asset(
          'assets/ic_plus_circle.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        children: [
          buidlprofile(context),
          buidwalletCard(),
          buidlevel(),
          buildSevces(),
          buidTransion(),
          buildSendAgain(),
          buildFrenly(),
        ],
      ),
    );
  }

  Widget buidlprofile(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 42),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy,',
                style:
                    greyTextStyle.copyWith(fontSize: 16, fontWeight: regular),
              ),
              Text(
                'shaynahan',
                style:
                    blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profil-page');
            },
            child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/img_profile.png'))),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: whiteColor),
                  child: Icon(
                    Icons.check_circle,
                    size: 14,
                    color: greenColor,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buidwalletCard() {
    return Container(
      padding: EdgeInsets.all(30),
      width: double.infinity,
      height: 220,
      margin: EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: DecorationImage(
          image: AssetImage('assets/img_bg_card.png'),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Madelina Bond',
            style: whiteTextStyle.copyWith(fontWeight: medium, fontSize: 18),
          ),
          SizedBox(
            height: 28,
          ),
          Text(
            '*** *** *** 1280',
            style: whiteTextStyle.copyWith(
                fontWeight: medium, fontSize: 18, letterSpacing: 8),
          ),
          SizedBox(
            height: 21,
          ),
          Text(
            'Balance',
            style: whiteTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 14,
            ),
          ),
          Text(
            'Rp 12.500',
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 24,
            ),
          )
        ],
      ),
    );
  }

  Widget buidlevel() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(22),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Level 1',
                style:
                    blackTextStyle.copyWith(fontWeight: medium, fontSize: 14),
              ),
              Spacer(),
              Text(
                '55%',
                style:
                    greenTextStyle.copyWith(fontWeight: semiBold, fontSize: 14),
              ),
              Text(
                ' Of Rp 20.000',
                style:
                    blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 14),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              value: 0.60,
              minHeight: 5,
              valueColor: AlwaysStoppedAnimation(greenColor),
              backgroundColor: lightBackgroundColor,
            ),
          )
        ],
      ),
    );
  }

  Widget buildSevces() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            'Do Something',
            style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeSevices(
                iconUrl: 'assets/ic_topup.png',
                title: 'Top UP',
                onTap: () {},
              ),
              HomeSevices(
                iconUrl: 'assets/ic_send.png',
                title: 'Send',
                onTap: () {},
              ),
              HomeSevices(
                iconUrl: 'assets/ic_withdraw.png',
                title: 'Withdraw',
                onTap: () {},
              ),
              HomeSevices(
                iconUrl: 'assets/ic_more.png',
                title: 'More',
                onTap: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buidTransion() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transactions',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 14,
          ),
          Container(
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: const [
                HomeTransions(
                  iconUrl: 'assets/ic_transaction_cat1.png',
                  title: 'Top Up',
                  time: 'Yesterday',
                  value: '+ 450.000',
                ),
                HomeTransions(
                  iconUrl: 'assets/ic_transaction_cat2.png',
                  title: 'Cashback',
                  time: 'Sep 11',
                  value: '+ 22.000',
                ),
                HomeTransions(
                  iconUrl: 'assets/ic_transaction_cat3.png',
                  title: 'Withdraw',
                  time: 'Sep 2',
                  value: '- 5.000',
                ),
                HomeTransions(
                  iconUrl: 'assets/ic_transaction_cat4.png',
                  title: 'Transfer',
                  time: 'Aug 27',
                  value: '- 123.500',
                ),
                HomeTransions(
                  iconUrl: 'assets/ic_transaction_cat5.png',
                  title: 'Electric',
                  time: 'Aug 27',
                  value: '- 12.300.000',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildSendAgain() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Send Again',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 14,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const HomeUser(
                  imageUrl: 'assets/img_friend1.png',
                  username: 'yuanita',
                ),
                const HomeUser(
                  imageUrl: 'assets/img_friend2.png',
                  username: 'budi',
                ),
                const HomeUser(
                  imageUrl: 'assets/img_friend3.png',
                  username: 'anjel',
                ),
                const HomeUser(
                  imageUrl: 'assets/img_friend4.png',
                  username: 'siap',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildFrenly() {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Friendly Tips',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              fontSize: 16,
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 14,
          ),
          // ignore: prefer_const_constructors
          Wrap(
            spacing: 17,
            runSpacing: 18,
            children: const [
              HomeTips(
                imgUrl: 'assets/img_tips1.png',
                title: 'Best tips for using a credit card',
                url: 'https://www.bogorloker.com/',
              ),
              HomeTips(
                imgUrl: 'assets/img_tips2.png',
                title: 'Spot the good pie of finance model',
                url: 'https://www.bogorloker.com/',
              ),
              HomeTips(
                imgUrl: 'assets/img_tips3.png',
                title: 'Great hack to get better advices',
                url: 'https://www.bogorloker.com/',
              ),
              HomeTips(
                imgUrl: 'assets/img_tips4.png',
                title: 'Save more penny buy this instead',
                url: 'https://www.bogorloker.com/',
              ),
            ],
          )
        ],
      ),
    );
  }
}
