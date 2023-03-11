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
                      // flex: 6,
                      child: Container(
                        height: 900,
                        child: OfferItem()
                      )
                  ),
                  Expanded(
                    // flex: 6,
                      child: Container(
                          height: 250,
                          child: OfferItem()
                      )
                  ),
                  Expanded(
                    // flex: 6,
                      child: Container(
                          height: 450,
                          child: OfferItem()
                      )
                  ),
                  // Expanded(
                      // flex: 1,
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
