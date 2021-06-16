import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suvidha_credit_card/utils/widgets/custom_text.dart';

class TransactionListTile extends StatelessWidget {
  const TransactionListTile({key, this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://source.unsplash.com/random/200x200?sig=${Random().nextInt(12)}}'),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 24),
        title: CustomText('$name'),
        subtitle: CustomText(
          '+\$100',
          color: Colors.green,
          fontWeight: FontWeight.w700,
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomText(
              'Date',
              fontWeight: FontWeight.w700,
            ),
            CustomText(
              '24/12/2019',
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              fontSize: 12,
            ),
          ],
        ),
      ),
    );
  }
}
