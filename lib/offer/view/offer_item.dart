import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../widgets/video.dart';

class OfferItem extends StatefulWidget {
  const OfferItem({Key? key}) : super(key: key);

  @override
  State<OfferItem> createState() => _OfferItemState();
}

class _OfferItemState extends State<OfferItem> {
  final ScrollController controller = ScrollController();
  final List<bool> _isShowQuestions = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains) {
      // desk screen
      if (constrains.maxWidth >= 1200) {
        double width = MediaQuery.of(context).size.width;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Container(
            //     height: 990.0,
            //     width: double.infinity,
            //     decoration: const BoxDecoration(
            //         gradient: LinearGradient(
            //       begin: Alignment.topCenter,
            //       end: Alignment.bottomRight,
            //       stops: [
            //         0.4,
            //         0.6,
            //         0.7,
            //         0.8,
            //       ],
            //       colors: [
            //         Colors.white,
            //         Color(0xffE5FEF6),
            //         Color(0xffC3FCEA),
            //         Color(0xff88F9D6),
            //       ],
            //     )),
            //     child: Padding(
            //       padding:
            //           EdgeInsets.fromLTRB(width / 5, 25.0, width / 5, 25.0),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: const [
            //           SizedBox(
            //             height: 20,
            //           ),
            //           Text(
            //             'Вільно  говорити англійською простіше ніж ти думаєш',
            //             style: TextStyle(
            //               fontSize: 24,
            //               color: Color(0xff16D69C),
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //           SizedBox(
            //             height: 20,
            //           ),
            //           Text(
            //             'Розкрийте свій ораторський потенціал з розмовним клубом Lets Talk',
            //             style: TextStyle(
            //               fontSize: 30,
            //               color: Color(0xff322153),
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //           SizedBox(
            //             height: 20,
            //           ),
            //           Text(
            //             'Тут ми обговорюємо цікаві теми, спілкуємося, сміємося та навчаємося легко та невимушено. Ми зустрічаємось у бібліотеці та насолоджуємось чаєм чи кавою. Друзі ласкаво просимо!',
            //             style: TextStyle(
            //               fontSize: 20,
            //               color: Color(0xff322153),
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //           SizedBox(
            //             height: 60,
            //           ),
            //           // Center(
            //           //   child: SizedBox(
            //           //     // height: 660,
            //           //       // width: 600,
            //           //       child: Expanded(
            //           //           child: YoutubeAppDemo()
            //           //       )
            //           //   ),
            //           // ),
            //           Expanded(child: YoutubeAppDemo()),
            //           SizedBox(
            //             height: 60,
            //           ),
            //         ],
            //       ),
            //     )),
            Container(
              color: const Color(0xff322153),
              height: 320,
              child: Padding(
                padding: EdgeInsets.fromLTRB(width / 5, 25.0, width / 5, 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                      child: AutoSizeText(
                        'Наша Філософія Навчання',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          // decoration: TextDecoration.underline,
                          // decorationThickness: 3,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: SizedBox(
                              // width: 550,
                              // height: 50,
                              child: ListTile(
                                  leading: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  title: Wrap(
                                    children: const [
                                      AutoSizeText(
                                        'Навчайтеся серед ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                        ),
                                        maxLines: 2,
                                      ),
                                      AutoSizeText('однодумців ',
                                          style: TextStyle(
                                            color: Color(0xff16D69C),
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        maxLines: 2,
                                      ),
                                      AutoSizeText(
                                        'і від ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                        ),
                                        maxLines: 2,
                                      ),
                                      AutoSizeText('наставників-однодумців.',
                                          style: TextStyle(
                                            color: Color(0xff16D69C),
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        maxLines: 2,
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              // width: 550,
                              // height: 50,
                              child: ListTile(
                                  leading: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  title: Wrap(
                                    children: const [
                                      AutoSizeText(
                                        'Вивчайте англійську  ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                        ),
                                        maxLines: 2,
                                      ),
                                      AutoSizeText('через практику',
                                          style: TextStyle(
                                            color: Color(0xff16D69C),
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        maxLines: 2,
                                      ),
                                      AutoSizeText(
                                        'а не через теорію.',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                        ),
                                        maxLines: 2,
                                      )
                                    ],
                                  )),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              // width: 550,
                              // height: 50,
                              child: ListTile(
                                  leading: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  title: Wrap(
                                    children: const [
                                      AutoSizeText(
                                        'Робимо так щоб наші учні говорили ',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                        ),
                                        maxLines: 2,
                                      ),
                                      AutoSizeText(
                                        'якомога більше',
                                        style: TextStyle(
                                          color: Color(0xff16D69C),
                                          // fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                        ),
                                        maxLines: 2,
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
                child: AutoSizeText(
              'Відгуки',
              style: TextStyle(
                fontSize: 30,
                color: Color(0xff00F2A9),
                fontWeight: FontWeight.bold,
              ),
            )),
            SizedBox(
              height: 500,
              child: Padding(
                padding: EdgeInsets.fromLTRB(width / 5, 25.0, width / 5, 25.0),
                child: ScrollConfiguration(
                  behavior: MyCustomScrollBehavior(),
                  child: ListView(
                    controller: controller,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // This next line does the trick.
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Image.asset(
                        'assets/reviews/reviews-ins1.jpg',
                        // height: 300,
                        // width: 200,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset('assets/reviews/reviews-ins2.jpg'),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset('assets/reviews/reviews-ins3.jpeg'),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset('assets/reviews/reviews-ins4.jpg'),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset('assets/reviews/reviews-ins5.jpg'),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff00F2A9),
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.all(25),
                  // side: BorderSide(color: Color(0xff322153), width: 2),
                ),
                child: const Text(
                  'ПРИЄДНАТИСЬ',
                  style: TextStyle(
                    color: Color(0xff322153),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 2300,
              child: Padding(
                padding: EdgeInsets.fromLTRB(width / 5, 25.0, width / 5, 25.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // This next line does the trick.
                  // scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Text(
                        'Що я отримую?',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xff322153),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Center(
                      child: Card(
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff00F2A9),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: SizedBox(
                          // width: 500,
                          height: 400,
                          child: Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      AutoSizeText(
                                        'Практика мовлення',
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Color(0xff00F2A9),
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 2,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      AutoSizeText(
                                        'Speaking  club дає вам можливість практикувати мовлення в безпечній та дружній атмосфері. Це допоможе покращити вашу вимову, граматику та лексику.',
                                        style: TextStyle(
                                          fontSize: 22,
                                          // color: Color(0xff322153),
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Container(
                                        height: 300,
                                        alignment: Alignment.center,
                                        // constraints: const BoxConstraints(
                                        //   maxWidth: 300,
                                        //   maxHeight: 100,
                                        // ),
                                        child: Image.asset(
                                          'assets/img/persons.webp',
                                          height: 300,
                                          width: 300,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Center(
                      child: Card(
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff00F2A9),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: SizedBox(
                          // width: 500,
                          height: 400,
                          child: Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      AutoSizeText(
                                        'Впевненість',
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Color(0xff00F2A9),
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 3,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      AutoSizeText(
                                        'Регулярна практика мовлення допоможе вам стати більш впевненим в мовленні. Це дуже корисно як у професійній сфері, так і в особистому житті.',
                                        style: TextStyle(
                                          fontSize: 22,
                                          // color: Color(0xff322153),
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Container(
                                        height: 300,
                                        alignment: Alignment.center,
                                        // constraints: const BoxConstraints(
                                        //   maxWidth: 300,
                                        //   maxHeight: 100,
                                        // ),
                                        child: Image.asset(
                                          'assets/img/persons.webp',
                                          height: 300,
                                          width: 300,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Center(
                      child: Card(
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff00F2A9),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: SizedBox(
                          // width: 500,
                          height: 500,
                          child: Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      AutoSizeText(
                                        'Нові знайомства',
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Color(0xff00F2A9),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      AutoSizeText(
                                        'Speaking club - це також можливість зустрічатися з новими людьми. Які мають спільний інтерес до вивчення іноземних мов.',
                                        style: TextStyle(
                                          fontSize: 22,
                                          // color: Color(0xff322153),
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Container(
                                        height: 300,
                                        alignment: Alignment.center,
                                        // constraints: const BoxConstraints(
                                        //   maxWidth: 300,
                                        //   maxHeight: 100,
                                        // ),
                                        child: Image.asset(
                                          'assets/img/persons.webp',
                                          height: 300,
                                          width: 300,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Center(
                      child: Card(
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff00F2A9),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: SizedBox(
                          // width: 500,
                          height: 400,
                          child: Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      AutoSizeText(
                                        'Корисні поради',
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Color(0xff00F2A9),
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 2,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      AutoSizeText(
                                        'Учасники Speaking club можуть ділитися порадами та прийомами. Ви також можете дізнатися про корисні ресурси та інструменти для вивчення мови.',
                                        style: TextStyle(
                                          fontSize: 22,
                                          // color: Color(0xff322153),
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Container(
                                        height: 300,
                                        alignment: Alignment.center,
                                        // constraints: const BoxConstraints(
                                        //   maxWidth: 300,
                                        //   maxHeight: 100,
                                        // ),
                                        child: Image.asset(
                                          'assets/img/persons.webp',
                                          height: 300,
                                          width: 300,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Center(
                      child: Card(
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff00F2A9),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: SizedBox(
                          // width: 500,
                          height: 400,
                          child: Padding(
                            padding: const EdgeInsets.all(28.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      AutoSizeText(
                                        'Розваги',
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Color(0xff00F2A9),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Вивчення мови це не лише рутина,а і цікавий та забавний процесс.Вивчення мови це не лише рутина,а і цікавий та забавний процесс. Більш ефективному засвоєнню матеріалу. Роблять процес вивчення більш захоплюючим та ефективним.',
                                        style: TextStyle(
                                          fontSize: 22,
                                          // color: Color(0xff322153),
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 3,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Container(
                                        height: 300,
                                        alignment: Alignment.center,
                                        // constraints: const BoxConstraints(
                                        //   maxWidth: 300,
                                        //   maxHeight: 100,
                                        // ),
                                        child: Image.asset(
                                          'assets/img/persons.webp',
                                          height: 300,
                                          width: 300,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: const Color(0xff322153),
              height: 550,
              child: Padding(
                padding: EdgeInsets.fromLTRB(width / 5, 25.0, width / 5, 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 40,
                          ),
                          Expanded(
                            child: AutoSizeText(
                              'Про нас',
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xff16D69C),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   height: 40,
                          // ),
                          Expanded(
                              child: AutoSizeText(
                            'Працюєм для тих, хто хоче швидко покращити свою англійську мову. Наша мета - допомогти нашим клієнтам стати впевненішими в спілкуванні розширити свій словниковий запас та покращити вимову.',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                          // Expanded(child: AutoSizeText(
                          //   'Наша мета - допомогти нашим клієнтам стати впевненішими в спілкуванні',
                          //   style: TextStyle(
                          //     fontSize: 18,
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),),
                          // Expanded(child: AutoSizeText(
                          //   'розширити свій словниковий запас та покращити вимову.',
                          //   style: TextStyle(
                          //     fontSize: 18,
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          Expanded(
                            child: AutoSizeText(
                              'Пропонуємо різні формати - від онлайн зустрічей до живих зустрічей з носіями мови. Групові та індивідуальні заняття, тематичні клуби та багато іншого. Вибирайте той формат, який вам більше підходить та допоможе досягти результату.',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          // Expanded(child: AutoSizeText(
                          //   'Групові та індивідуальні заняття, тематичні клуби та багато іншого. ',
                          //   style: TextStyle(
                          //     fontSize: 18,
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),),
                          // Expanded(
                          //   child: AutoSizeText(
                          //     'Вибирайте той формат, який вам більше підходить та допоможе досягти результату.',
                          //     style: TextStyle(
                          //       fontSize: 18,
                          //       color: Colors.white,
                          //       fontWeight: FontWeight.bold,
                          //     ),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          Expanded(
                            child: AutoSizeText(
                              'Ми професіонали з багаторічним досвідом роботи викладачів англійської мови. Допоможем вам покращити вашу як розмовну мову так і граматику, та розширити свій словниковий запас. ',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          // Expanded(child: AutoSizeText(
                          //   'Допоможем вам покращити вашу як розмовну мову так і граматику',
                          //   style: TextStyle(
                          //     fontSize: 18,
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),),
                          // Expanded(child: AutoSizeText(
                          //   'Та розширити свій словниковий запас.',
                          //   style: TextStyle(
                          //     fontSize: 18,
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          Expanded(
                            child: AutoSizeText(
                              'Не витрачайте час на пошук ефективних методів вивчення англійської мови - Приєднуйтесь до Speaking clubs вже сьогодні!',
                              style: TextStyle(
                                fontSize: 18,
                                // color: Colors.white,
                                color: Color(0xff16D69C),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          // Expanded(child: AutoSizeText(
                          //   'Приєднуйтесь до Speaking clubs вже сьогодні!',
                          //   style: TextStyle(
                          //     fontSize: 18,
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Container(
                            height: 500,
                            alignment: Alignment.center,
                            // constraints: const BoxConstraints(
                            //   maxWidth: 300,
                            //   maxHeight: 100,
                            // ),
                            child: Image.asset(
                              'assets/img/conversation.png',
                              height: 500,
                              width: 400,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 600,
              child: Padding(
                padding: EdgeInsets.fromLTRB(width / 5, 25.0, width / 5, 25.0),
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Expanded(
                        flex: 1,
                        child: AutoSizeText(
                          'Отримай Справжній Результат',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xff16D69C),
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 3,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Expanded(
                        flex: 1,
                        child: AutoSizeText(
                          'Якщо ви справді докладаєте всіх зусиль але заговорити чи покращити свою розмовну мову не вийде',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff322153),
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 4,
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: AutoSizeText(
                          'Тоді ми повернемо вам кошти. Ви можете скасувати абонемент в будь-який час',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff322153),
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 3,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Expanded(
                        flex: 1,
                        child: AutoSizeText(
                          'Вам непотрібно роками вивчати Англійську щоб гарно на ній говорити',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff322153),
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 3,
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: AutoSizeText(
                          'Так вам буде спочатку незручно але результат того вартий',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff322153),
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 3,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Expanded(
                        flex: 1,
                        child: AutoSizeText(
                          'Це чудова можливість познайомитися зі схожими за інтересами людьми. ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff322153),
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 3,
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: AutoSizeText(
                          'Перестань втрачати час на безкінечні курси книги чи репетиторів. Почни говорити зараз!',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff322153),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Image.asset(
                                      'assets/img/telegram.png',
                                      height: 150,
                                      width: 100,
                                    ),
                                  ),
                                  const Expanded(
                                    flex: 1,
                                    child: AutoSizeText(
                                        'Ми створили постійно доступний портал в телеграмі. Де публікуєм новини/івенти і цікавинки клубу'),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Image.asset(
                                      'assets/img/profits.png',
                                      height: 150,
                                      width: 100,
                                    ),
                                  ),
                                  const Expanded(
                                    flex: 1,
                                    child: AutoSizeText(
                                        'Відкриємо нові кар\'єрні можливості для вас. В середньому, люди з хорошим рівнем англійської заробляють на 30% більше ніж інші'),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Image.asset(
                                      'assets/img/goal.png',
                                      height: 150,
                                      width: 100,
                                    ),
                                  ),
                                  const Expanded(
                                    flex: 1,
                                    child: AutoSizeText(
                                        'Наша програма спільноти надасть вам все що необхідно для ваших цілей.'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: const Color(0xff322153),
              height: 500,
              child: Padding(
                padding: EdgeInsets.fromLTRB(width / 5, 25.0, width / 5, 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            // border color
                            color: Color(0xff16D69C),
                            // border thickness
                            width: 5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        shadowColor: Colors.white,
                        color: const Color(0xff322153),
                        child: SizedBox(
                          // width: 340,
                          height: 450,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                const Expanded(
                                  child: AutoSizeText(
                                    'Дитяча карта',
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                    maxLines: 2,
                                  ),
                                ),
                                const Expanded(
                                  child: AutoSizeText(
                                    '(1 місяць)',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                    maxLines: 2,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ), //SizedBox
                                Expanded(
                                  child: ListTile(
                                    title: const AutoSizeText(
                                      '800 грн',
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                      maxLines: 2,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Color(0xff16D69C), width: 5),
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                  ),
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ),
                                const Divider(
                                  color: Colors.white,
                                ),
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.done,
                                        color: Color(0xff16D69C), size: 32),
                                    title: AutoSizeText(
                                      'Необмежені відвідування дитячих груп',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                      maxLines: 3,
                                    ),
                                  ),
                                ), //SizedBox
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.cancel,
                                        color: Colors.red, size: 32),
                                    title: AutoSizeText(
                                      'Легкі покрокові посібники',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                      maxLines: 3,
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.cancel_outlined,
                                        color: Colors.red, size: 32),
                                    title: AutoSizeText(
                                      'Індивідуальне менторство 24/7',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                      maxLines: 3,
                                    ),
                                  ),
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ), //SizedBox
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.cancel_outlined,
                                        color: Colors.red, size: 32),
                                    title: AutoSizeText(
                                      'Чати, обговорення та допомога',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                      maxLines: 3,
                                    ),
                                  ),
                                ) //SizedBox
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    const Expanded(child: SizedBox()),
                    Expanded(
                      flex: 4,
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            // border color
                            color: Color(0xff16D69C),
                            // border thickness
                            width: 5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        shadowColor: Colors.white,
                        color: const Color(0xff322153),
                        child: SizedBox(
                          width: 340,
                          height: 450,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                const Expanded(
                                  child: AutoSizeText(
                                    'VIP',
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ), //Textstyle
                                  ),
                                ),
                                const Expanded(
                                  child: AutoSizeText(
                                    '(1 місяць)',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ), //Textstyle
                                  ),
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ), //SizedBox
                                Expanded(
                                  child: ListTile(
                                    title: const AutoSizeText(
                                      '1400 грн',
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Color(0xff16D69C), width: 5),
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                  ),
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ),
                                const Divider(
                                  color: Colors.white,
                                ),
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.done,
                                        color: Color(0xff16D69C), size: 32),
                                    title: AutoSizeText(
                                      'Необмежені відвідування',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ), //SizedBox
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.done,
                                        color: Color(0xff16D69C), size: 32),
                                    title: AutoSizeText(
                                      'Легкі покрокові посібники',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.done,
                                        color: Color(0xff16D69C), size: 32),
                                    title: AutoSizeText(
                                      'Індивідуальне менторство 24/7',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ), //SizedBox
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.done,
                                        color: Color(0xff16D69C), size: 32),
                                    title: AutoSizeText(
                                      'Чати, обговорення та допомога',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ), //SizedBox
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    const Expanded(child: SizedBox()),
                    Expanded(
                      flex: 4,
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            // border color
                            color: Color(0xff16D69C),
                            // border thickness
                            width: 5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        shadowColor: Colors.white,
                        color: const Color(0xff322153),
                        child: SizedBox(
                          width: 340,
                          height: 450,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                const Expanded(
                                  child: AutoSizeText(
                                    'VIP на 3 місяці',
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ), //Textstyle
                                  ),
                                ), //Text
                                const SizedBox(
                                  height: 30,
                                ), //SizedBox
                                Expanded(
                                  child: ListTile(
                                    title: const AutoSizeText(
                                      '3600 грн',
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Color(0xff16D69C), width: 5),
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                  ),
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ),
                                const Divider(
                                  color: Colors.white,
                                ),
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.done,
                                        color: Color(0xff16D69C), size: 32),
                                    title: AutoSizeText(
                                      'Необмежені відвідування',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ), //SizedBox
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.done,
                                        color: Color(0xff16D69C), size: 32),
                                    title: AutoSizeText(
                                      'Легкі покрокові посібники',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.done,
                                        color: Color(0xff16D69C), size: 32),
                                    title: AutoSizeText(
                                      'Індивідуальне менторство 24/7',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ), //SizedBox
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.done,
                                        color: Color(0xff16D69C), size: 32),
                                    title: AutoSizeText(
                                      'Чати, обговорення та допомога',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ), //SizedBox
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: const Color(0xff322153),
              height: 500,
              child: Padding(
                padding: EdgeInsets.fromLTRB(width / 5, 0, width / 5, 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 4, //weight for the widget
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            // border color
                            color: Color(0xff16D69C),
                            // border thickness
                            width: 5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        shadowColor: Colors.white,
                        color: const Color(0xff322153),
                        child: SizedBox(
                          width: 340,
                          height: 450,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                const Expanded(
                                  child: AutoSizeText(
                                    'Студентська',
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ), //Textstyle
                                  ),
                                ),
                                const Expanded(
                                  child: AutoSizeText(
                                    '(1 місяць)',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ), //Textstyle
                                  ),
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ), //SizedBox
                                Expanded(
                                  child: ListTile(
                                    title: const AutoSizeText(
                                      '600 грн',
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Color(0xff16D69C), width: 5),
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                  ),
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ),
                                const Divider(
                                  color: Colors.white,
                                ),
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.done,
                                        color: Color(0xff16D69C), size: 32),
                                    title: AutoSizeText(
                                      'Необмежені відвідування',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ), //SizedBox
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.done,
                                        color: Color(0xff16D69C), size: 32),
                                    title: AutoSizeText(
                                      'Легкі покрокові посібники',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.cancel_outlined,
                                        color: Colors.red, size: 32),
                                    title: AutoSizeText(
                                      'Індивідуальне менторство 24/7',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ), //SizedBox
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.done,
                                        color: Color(0xff16D69C), size: 32),
                                    title: AutoSizeText(
                                      'Чати, обговорення та допомога',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ), //SizedBox
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    Expanded(
                      flex: 4, //weight for the widget
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            // border color
                            color: Color(0xff16D69C),
                            // border thickness
                            width: 5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        shadowColor: Colors.white,
                        color: const Color(0xff322153),
                        child: SizedBox(
                          width: 340,
                          height: 450,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                const Expanded(
                                  child: AutoSizeText(
                                    'Вихідна',
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ), //Textstyle
                                  ),
                                ), //Text
                                const Expanded(
                                  child: AutoSizeText(
                                    '(1 місяць)',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ), //Textstyle
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ), //SizedBox
                                Expanded(
                                  child: ListTile(
                                    title: const AutoSizeText(
                                      '800 грн',
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Color(0xff16D69C), width: 5),
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                  ),
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ),
                                const Divider(
                                  color: Colors.white,
                                ),
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.done,
                                        color: Color(0xff16D69C), size: 32),
                                    title: AutoSizeText(
                                      'Відвідування тільки на вихідних',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ), //SizedBox
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.done,
                                        color: Color(0xff16D69C), size: 32),
                                    title: AutoSizeText(
                                      'Легкі покрокові посібники',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.cancel_outlined,
                                        color: Colors.red, size: 32),
                                    title: AutoSizeText(
                                      'Індивідуальне менторство 24/7',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ), //SizedBox
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.done,
                                        color: Color(0xff16D69C), size: 32),
                                    title: AutoSizeText(
                                      'Чати, обговорення та допомога',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ), //SizedBox
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    const Expanded(child: SizedBox()),
                    Expanded(
                      flex: 4, //weight for the widget
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            // border color
                            color: Color(0xff16D69C),
                            // border thickness
                            width: 5,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        shadowColor: Colors.white,
                        color: const Color(0xff322153),
                        child: SizedBox(
                          width: 340,
                          height: 450,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                const Expanded(
                                  child: AutoSizeText(
                                    'Вихідна на 3 місяці',
                                    style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ), //Textstyle
                                  ),
                                ), //Text
                                const SizedBox(
                                  height: 30,
                                ), //SizedBox
                                Expanded(
                                  child: ListTile(
                                    title: const AutoSizeText(
                                      '2400 грн',
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Color(0xff16D69C), width: 5),
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                  ),
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ),
                                const Divider(
                                  color: Colors.white,
                                ),
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.done,
                                        color: Color(0xff16D69C), size: 32),
                                    title: AutoSizeText(
                                      'Необмежені відвідування',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ), //SizedBox
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.done,
                                        color: Color(0xff16D69C), size: 32),
                                    title: AutoSizeText(
                                      'Легкі покрокові посібники',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.cancel_outlined,
                                        color: Colors.red, size: 32),
                                    title: AutoSizeText(
                                      'Індивідуальне менторство 24/7',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ), //Text
                                const SizedBox(
                                  height: 10,
                                ), //SizedBox
                                const Expanded(
                                  child: ListTile(
                                    leading: Icon(Icons.done,
                                        color: Color(0xff16D69C), size: 32),
                                    title: AutoSizeText(
                                      'Чати, обговорення та допомога',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ), //SizedBox
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                  // color: const Color(0xff322153),
                  height: 315,
                  child: Padding(
                    padding:
                        EdgeInsets.fromLTRB(width / 5, 25.0, width / 5, 25.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        const AutoSizeText(
                          'Питання що часто задають',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xff16D69C),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Card(
                          child: ListTile(
                            title: const Text(
                                'Які формати Speaking club пропонує ваша компанія?'),
                            trailing: const Icon(
                              Icons.arrow_drop_down_circle,
                              color: Color(0xff16D69C),
                            ),
                            onTap: () {
                              setState(
                                () {
                                  _isShowQuestions[0] = !_isShowQuestions[0];
                                },
                              );
                            },
                          ),
                        ),
                        Visibility(
                            visible: _isShowQuestions[0],
                            child: const Text(
                                'від онлайн зустрічей до живих зустрічей з носіями мови')),
                        const SizedBox(
                          height: 20,
                        ),
                        Card(
                          child: ListTile(
                            title: const Text(
                                'Які вимоги до рівня англійської мови для участі в Speaking club?'),
                            trailing: const Icon(
                              Icons.arrow_drop_down_circle,
                              color: Color(0xff16D69C),
                            ),
                            onTap: () {
                              setState(
                                () {
                                  _isShowQuestions[1] = !_isShowQuestions[1];
                                },
                              );
                            },
                          ),
                        ),
                        Visibility(
                            visible: _isShowQuestions[1],
                            child: const Text(
                                'Ми приймаємо учасників на всіх рівнях володіння англійською мовою - від початківців до продвинутих. Від наших учасників очікується бажання вивчати мову та брати активну участь у заняттях.')),
                        const SizedBox(
                          height: 20,
                        ),
                        Card(
                          child: ListTile(
                            title: const Text(
                                'Які вимоги до рівня англійської мови для участі в Speaking club?'),
                            trailing: const Icon(
                              Icons.arrow_drop_down_circle,
                              color: Color(0xff16D69C),
                            ),
                            onTap: () {
                              setState(
                                () {
                                  _isShowQuestions[2] = !_isShowQuestions[2];
                                },
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Visibility(
                            visible: _isShowQuestions[2],
                            child: const Text(
                                'Теми для обговорення на заняттях Speaking club можуть бути різними - від повсякденного спілкування до бізнес-тем. Ми стараємося підібрати теми, які будуть цікавими для наших учасників та допоможуть їм покращити рівень володіння англійською мовою')),
                        Card(
                          child: ListTile(
                            title: const Text('Чи можна взяти пробне заняття?'),
                            trailing: const Icon(
                              Icons.arrow_drop_down_circle,
                              color: Color(0xff16D69C),
                            ),
                            onTap: () {
                              setState(
                                () {
                                  _isShowQuestions[3] = !_isShowQuestions[3];
                                },
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Visibility(
                            visible: _isShowQuestions[3],
                            child: const Text(
                                'Так, ми пропонуємо пробне заняття, під час якого ви зможете оцінити наші методи навчання та визначити, чи підходить вам формат Speaking club.')),
                        Card(
                          child: ListTile(
                            title: const Text(
                                'Які вікові обмеження для участі в Speaking club?'),
                            trailing: const Icon(
                              Icons.arrow_drop_down_circle,
                              color: Color(0xff16D69C),
                            ),
                            onTap: () {
                              setState(
                                () {
                                  _isShowQuestions[4] = !_isShowQuestions[4];
                                },
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Visibility(
                            visible: _isShowQuestions[4],
                            child: const Text(
                                'У нас немає вікових обмежень для участі в Speaking club. Ми раді бачити наших учасників будь-якого віку, які бажають вивчати англійську мову та розвиватися комунікативно?')),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff00F2A9),
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.all(25),
                              // side: BorderSide(color: Color(0xff322153), width: 2),
                            ),
                            child: const Text(
                              'ПРИЄДНАТИСЬ',
                              style: TextStyle(
                                color: Color(0xff322153),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        );
      }

      // tablet screen
      if (constrains.maxWidth > 656 && constrains.maxWidth < 1400) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constrains.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                children: <Widget>[
                  Container(
                    // A fixed-height child.
                    color: const Color(0xffeeee00), // Yellow
                    height: 120.0,
                    alignment: Alignment.center,
                    child: const Text('Fixed Height Content'),
                  ),
                  Container(
                    // A fixed-height child.
                    color: const Color(0xffeeee00), // Yellow
                    height: 120.0,
                    alignment: Alignment.center,
                    child: const Text('Fixed Height Content'),
                  ),
                  Container(
                    // A fixed-height child.
                    color: const Color(0xffeeee00), // Yellow
                    height: 120.0,
                    alignment: Alignment.center,
                    child: const Text('Fixed Height Content'),
                  ),
                  Expanded(
                    // A flexible child that will grow to fit the viewport but
                    // still be at least as big as necessary to fit its contents.
                    child: Container(
                      color: const Color(0xffee0000), // Red
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('Flexible Content'),
                    ),
                  ),
                  Expanded(
                    // A flexible child that will grow to fit the viewport but
                    // still be at least as big as necessary to fit its contents.
                    child: Container(
                      color: const Color(0xffee0000), // Red
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('Flexible Content'),
                    ),
                  ),
                  Expanded(
                    // A flexible child that will grow to fit the viewport but
                    // still be at least as big as necessary to fit its contents.
                    child: Container(
                      color: const Color(0xffee0000), // Red
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('Flexible Content'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }

      // mobile screen
      if (constrains.maxWidth < 657) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Expanded(child: Text('Text offer')),
            Expanded(child: Text('Video')),
            Expanded(child: Text('Наша філософія викладання')),
            Expanded(child: Text('Скріни з гарними відгуками')),
            Expanded(child: Text('Призив до дії')),
            Expanded(child: Text('Що я отримаю')),
            Expanded(
                child: Text(
                    'Практика мовлення: Speaking club дає вам можливість практикувати мовлення в безпечній та дружній атмосфері. Це допоможе покращити вашу вимову, граматику та лексику.')),
            Expanded(
                child: Text(
                    'Впевненість: Регулярна практика мовлення допоможе вам стати більш впевненим в мовленні, що може бути корисно як у професійній сфері, так і в особистому житті.')),
            Expanded(
                child: Text(
                    'Нові знайомства: Speaking club - це також можливість зустрічатися з новими людьми, які мають спільний інтерес до вивчення іноземних мов.')),
            Expanded(
                child: Text(
                    'Корисні поради: Учасники Speaking club можуть ділитися порадами та прийомами, які допомагають у навчанні мови. Ви також можете дізнатися про корисні ресурси та інструменти для вивчення мови.')),
            Expanded(
                child: Text(
                    'Ігри: Вивчення мови це не лише рутина,а і цікавий та забавний процесс.Це сприяє більш ефективному засвоєнню матеріалу, оскільки ви будете більш зацікавлені у тому, що ви вивчаєте. Узагалі, ігри можуть бути корисним інструментом у вивченні мови, оскільки вони можуть зробити процес вивчення більш захоплюючим та ефективним.')),
          ],
        );
      }

      return const Text('null');
    });
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}
