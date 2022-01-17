import 'package:ecommerce/theme.dart';
import 'package:ecommerce/widgets/product_card.dart';
import 'package:ecommerce/widgets/product_card1.dart';
import 'package:ecommerce/widgets/product_tile.dart';
import 'package:ecommerce/widgets/product_tile1.dart';
import 'package:ecommerce/widgets/product_tile2.dart';
import 'package:ecommerce/widgets/product_tile3.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget header() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              //cross untuk membuat rata kiri di sebuah column
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello , Erwin',
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '@Erwin',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/image_profile.png'),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget categories() {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      //singlechildscrollview agar bisa di scroll kesamping
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: secondaryColor,
              ),
              child: Text(
                'All Category',
                style: primaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: subtitleColor),
                color: transparentColor,
              ),
              child: Text(
                'Category1',
                style: primaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: subtitleColor),
                color: transparentColor,
              ),
              child: Text(
                'Category2',
                style: primaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: subtitleColor),
                color: transparentColor,
              ),
              child: Text(
                'Category3',
                style: primaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: subtitleColor),
                color: transparentColor,
              ),
              child: Text(
                'Category4',
                style: primaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: medium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget judul() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Text(
        'Products Unggulan',
        style: priceTextStyle.copyWith(
          fontWeight: semiBold,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget title() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Text(
        'Products Baru',
        style: priceTextStyle.copyWith(
          fontWeight: semiBold,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget products() {
    return Container(
      margin: EdgeInsets.only(top: 14),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Row(
                children: [
                  ProductCard(),
                  ProductCard1(),
                  ProductCard(),
                  ProductCard1(),
                ],
              ),
            ],
          )),
    );
  }

  Widget baru() {
    return Container(
      margin: EdgeInsets.only(top: 14),
      child: Column(
        children: [
          ProductTile(),
          ProductTile1(),
          ProductTile2(),
          ProductTile3(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        categories(),
        judul(),
        products(),
        title(),
        baru(),
      ],
    );
  }
}
