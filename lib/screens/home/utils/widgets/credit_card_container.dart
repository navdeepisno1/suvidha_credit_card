import 'package:flutter/material.dart';
import 'package:suvidha_credit_card/utils/widgets/custom_text.dart';

class CreditCardContainer extends StatelessWidget {
  const CreditCardContainer({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.width * 0.75 * 0.63,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/img_bg_cc.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.75),
            blurRadius: 10,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                'VISA',
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
              CustomText(
                'Debit Card',
                color: Colors.white,
                fontSize: 12,
              ),
            ],
          ),
          CustomText(
            '9XXX XXXX XXXX 9999',
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    'Card Holder',
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  CustomText(
                    'Navdeep Sharma',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    'Expiry',
                    fontSize: 12,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  CustomText(
                    '10 / 22',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
