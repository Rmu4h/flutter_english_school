import 'package:flutter/material.dart';
import 'package:flutter_english_school/footer/view/footer_item.dart';
import 'package:flutter_english_school/header/view/header_item.dart';
import 'package:flutter_english_school/offer/view/offer_item.dart';
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(minWidth: 390, maxWidth: 1200),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [HeaderItem(scaffoldKey), OfferItem(), FooterItem()],
          ),
        ),
      ),
    );
  }
}
