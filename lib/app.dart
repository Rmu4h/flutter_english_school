import 'package:flutter/material.dart';
import 'package:flutter_english_school/footer/view/footer_item.dart';
import 'package:flutter_english_school/header/view/header_item.dart';
import 'package:flutter_english_school/offer/view/offer_item.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: IntrinsicHeight(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(height: 110, child: HeaderItem()),
                Expanded(child: SizedBox(height: 7250, child: OfferItem())),
                SizedBox(height: 300, child: FooterItem()),
                // )
              ],
            ),
          ),
        );
      },
    ));
  }
}
