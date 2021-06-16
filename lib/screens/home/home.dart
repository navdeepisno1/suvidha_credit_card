import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:suvidha_credit_card/screens/home/utils/widgets/app_bar.dart';
import 'package:suvidha_credit_card/screens/home/utils/widgets/balance_container.dart';
import 'package:suvidha_credit_card/screens/home/utils/widgets/credit_card_container.dart';
import 'package:suvidha_credit_card/screens/home/utils/widgets/transactions_container.dart';
import 'package:suvidha_credit_card/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC9DDEF),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: kColorPrimary,
        ),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.home_rounded,
              size: 32,
              color: Colors.white,
            ),
            Icon(
              Icons.account_balance_outlined,
              size: 32,
              color: Colors.white,
            ),
            Icon(
              Icons.chat_rounded,
              size: 32,
              color: Colors.white,
            ),
            Icon(
              Icons.settings,
              size: 32,
              color: Colors.white,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 200 + MediaQuery.of(context).size.width * 0.75 * 0.63,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 275,
                  decoration: BoxDecoration(
                    color: kColorPrimary,
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    CustomAppBar(),
                    BalanceContainer(),
                  ],
                ),
                Positioned(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.75,
                      height:
                          MediaQuery.of(context).size.width * 0.75 * 0.63 + 24,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: true,
                    ),
                    items: List.generate(5, (index) => CreditCardContainer()),
                  ),
                  left: 0,
                  right: 0,
                  top: 175,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          TransactionsContainerListTile(),
        ],
      ),
    );
  }
}
