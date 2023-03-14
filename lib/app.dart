import 'package:flutter/material.dart';
import 'package:flutter_english_school/footer/view/footer_item.dart';
import 'package:flutter_english_school/header/view/header_item.dart';
import 'package:flutter_english_school/offer/view/offer_item.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: IntrinsicHeight(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                          height:110,
                          child: HeaderItem()
                      ),
                  Expanded(
                      child: Container(
                        height: 6000,
                        child: OfferItem()
                      )
                  ),
                  Container(
                        height: 120,
                        child: FooterItem()
                      )
                  // )
                ],
              ),
            ),
          );
        },
      )
    );
  }
}
