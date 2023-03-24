import 'package:flutter/material.dart';
import 'package:flutter_english_school/footer/view/footer_item.dart';
import 'package:flutter_english_school/header/view/header_item.dart';
import 'package:flutter_english_school/offer/view/offer_item.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        // backgroundColor: Colors.yellowAccent,
        body: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: IntrinsicHeight(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container( height: height, child: const HeaderItem()),
                const Expanded(
                    child: SizedBox(height: 7100, child: OfferItem())),
                const SizedBox(height: 300, child: FooterItem()),
                // )
              ],
            ),
          ),
        );
      },
    ));
  }
}
