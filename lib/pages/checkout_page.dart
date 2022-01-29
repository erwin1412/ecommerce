import 'package:ecommerce/theme.dart';
import 'package:ecommerce/widgets/checkout_card.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text('Checkout Details'),
        elevation: 0,
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          // NOTE:List ITEMS
          SizedBox(height: 30),
          Text(
            'List Items',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          CheckoutCard(),
          CheckoutCard(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
