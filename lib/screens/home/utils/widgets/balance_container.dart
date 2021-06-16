import 'package:flutter/material.dart';
import 'package:suvidha_credit_card/utils/widgets/custom_text.dart';

class BalanceContainer extends StatelessWidget {
  const BalanceContainer({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            'Balance',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                '\$',
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18,
                padding: EdgeInsets.symmetric(vertical: 6),
              ),
              SizedBox(
                width: 6,
              ),
              CustomText(
                '2000',
                fontWeight: FontWeight.w700,
                fontSize: 38,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
