import 'package:flutter/material.dart';
import 'package:suvidha_credit_card/utils/widgets/custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.grid_view,
            color: Colors.white,
          ),
          CustomText(
            'Your Wallet',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/img_profile.jpg'),
          )
        ],
      ),
    );
  }
}
