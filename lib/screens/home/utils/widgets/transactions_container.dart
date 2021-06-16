import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:suvidha_credit_card/screens/home/utils/widgets/transaction_list_tile.dart';
import 'package:suvidha_credit_card/utils/constants/constants.dart';
import 'package:suvidha_credit_card/utils/widgets/custom_text.dart';

class TransactionsContainerListTile extends StatelessWidget {
  const TransactionsContainerListTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(48),
            topRight: Radius.circular(48),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    'Transactions',
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.black54,
                  ),
                  Icon(
                    Icons.sort_rounded,
                    size: 32,
                    color: Colors.black54,
                  )
                ],
              ),
            ),
            Expanded(
              child: AnimationLimiter(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: List.generate(
                      namesList.length,
                      (index) => AnimationConfiguration.staggeredList(
                            position: index,
                            duration: const Duration(milliseconds: 375),
                            child: SlideAnimation(
                              verticalOffset: 50.0,
                              child: FadeInAnimation(
                                child: TransactionListTile(
                                  name: namesList[index],
                                ),
                              ),
                            ),
                          )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
