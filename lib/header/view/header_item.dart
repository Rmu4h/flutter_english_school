import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../offer/widgets/video.dart';

class HeaderItem extends StatefulWidget {
  const HeaderItem({Key? key}) : super(key: key);

  @override
  State<HeaderItem> createState() => _HeaderItemState();
}

class _HeaderItemState extends State<HeaderItem> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains) {
      //desktop
      if (constrains.maxWidth >= 1200) {
        double width = MediaQuery.of(context).size.width;
        double height = MediaQuery.of(context).size.height;

        return Container(
          // height: height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            stops: [
              0.4,
              0.6,
              0.7,
              0.8,
            ],
            colors: [
              Colors.white,
              Color(0xffE5FEF6),
              Color(0xffC3FCEA),
              Color(0xff88F9D6),
            ],
          )),
          child: Padding(
            padding: EdgeInsets.fromLTRB(width / 5, 0, width / 5, 0),
            // padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: height,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff00F2A9),
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                              // side: BorderSide(color: Color(0xff322153), width: 2),
                            ),
                            child: const AutoSizeText(
                              'ПРИЄДНАТИСЬ',
                              style: TextStyle(
                                color: Color(0xff322153),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                // if (states.contains(MaterialState.focused))
                                //   return Colors.red;
                                if (states.contains(MaterialState.hovered)) {
                                  return const Color(0xff322153);
                                }
                                // if (states.contains(MaterialState.pressed))
                                //   return Colors.blue;
                                return const Color(
                                    0xff16D69C); // null throus error in flutter 2.2+.
                              }),
                            ),
                            onPressed: () {},
                            child: const AutoSizeText(
                              'Філософія',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              maxLines: 1,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                // if (states.contains(MaterialState.focused))
                                //   return Colors.red;
                                if (states.contains(MaterialState.hovered)) {
                                  return const Color(0xff322153);
                                }
                                // if (states.contains(MaterialState.pressed))
                                //   return Colors.blue;
                                return const Color(
                                    0xff16D69C);
                              }),
                            ),
                            onPressed: () {},
                            child: const AutoSizeText(
                              'Про нас',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              maxLines: 2,
                            ),
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            icon: Image.asset('assets/img/logo.png'),
                            iconSize: 50,
                            onPressed: () {},
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                // if (states.contains(MaterialState.focused))
                                //   return Colors.red;
                                if (states.contains(MaterialState.hovered)) {
                                  return const Color(0xff322153);
                                }
                                // if (states.contains(MaterialState.pressed))
                                //   return Colors.blue;
                                return const Color(
                                    0xff16D69C); // null throus error in flutter 2.2+.
                              }),
                            ),
                            onPressed: () {},
                            child: const AutoSizeText(
                              'Що я отримаю',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              maxLines: 2,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                // if (states.contains(MaterialState.focused))
                                //   return Colors.red;
                                if (states.contains(MaterialState.hovered)) {
                                  return const Color(0xff322153);
                                }
                                // if (states.contains(MaterialState.pressed))
                                //   return Colors.blue;
                                return const Color(
                                    0xff16D69C); // null throus error in flutter 2.2+.
                              }),
                            ),
                            onPressed: () {},
                            child: const AutoSizeText(
                              'Ціна',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              maxLines: 1,
                            ),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              backgroundColor: Colors.white,
                              shape: const StadiumBorder(),
                              side: const BorderSide(
                                  width: 2, // the thickness
                                  color: Color(
                                      0xff322153) // the color of the border
                                  ),
                              // side: BorderSide(color: Color(0xff322153), width: 2),
                            ),
                            child: const AutoSizeText(
                              'LOG IN',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff322153),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 12,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          // SizedBox(
                          //   height: 20,
                          // ),
                          SizedBox(),
                          AutoSizeText(
                            'Вільно  говорити англійською простіше ніж ти думаєш',
                            style: TextStyle(
                              fontSize: 24,
                              color: Color(0xff16D69C),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          AutoSizeText(
                            'Розкрийте свій ораторський потенціал з розмовним клубом Lets Talk',
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff322153),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          AutoSizeText(
                            'Тут ми обговорюємо цікаві теми, спілкуємося, сміємося та навчаємося легко та невимушено. Ми зустрічаємось у бібліотеці та насолоджуємось чаєм чи кавою. Друзі ласкаво просимо!',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff322153),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // const SizedBox(
                          //     // height: 100,
                          //     ),
                          Center(
                            child: SizedBox(
                              // color: Colors.red,
                                height: 400,
                                width: 710,
                                child: YoutubeAppDemo()),
                          ),
                          // const SizedBox(
                          //   // height: 100,
                          // ),
                          SizedBox(
                            height: 60,
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        );
      }

      //Tablet
      if (constrains.maxWidth > 699 && constrains.maxWidth < 1400) {
        double width = MediaQuery.of(context).size.width;

        return Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            stops: [
              0.4,
              0.6,
              0.7,
              0.8,
            ],
            colors: [
              Colors.white,
              Color(0xffE5FEF6),
              Color(0xffC3FCEA),
              Color(0xff88F9D6),
            ],
          )),
          child: Padding(
            padding: EdgeInsets.fromLTRB(width / 10, 25.0, width / 10, 25.0),
            // height: 200,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          backgroundColor: const Color(0xff00F2A9),
                          shape: const StadiumBorder(),
                          // side: BorderSide(color: Color(0xff322153), width: 2),
                        ),
                        child: const Text(
                          'ПРИЄДНАТИСЬ',
                          style: TextStyle(
                            color: Color(0xff322153),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            // if (states.contains(MaterialState.focused))
                            //   return Colors.red;
                            if (states.contains(MaterialState.hovered)) {
                              return const Color(0xff322153);
                            }
                            // if (states.contains(MaterialState.pressed))
                            //   return Colors.blue;
                            return const Color(
                                0xff16D69C); // null throus error in flutter 2.2+.
                          }),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Філософія',
                          style: TextStyle(),
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            // if (states.contains(MaterialState.focused))
                            //   return Colors.red;
                            if (states.contains(MaterialState.hovered)) {
                              return const Color(0xff322153);
                            }
                            // if (states.contains(MaterialState.pressed))
                            //   return Colors.blue;
                            return const Color(
                                0xff16D69C); // null throus error in flutter 2.2+.
                          }),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Про нас',
                          style: TextStyle(),
                        ),
                      ),
                      IconButton(
                        icon: Image.asset('assets/img/logo.png'),
                        iconSize: 50,
                        onPressed: () {},
                      ),
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            // if (states.contains(MaterialState.focused))
                            //   return Colors.red;
                            if (states.contains(MaterialState.hovered)) {
                              return const Color(0xff322153);
                            }
                            // if (states.contains(MaterialState.pressed))
                            //   return Colors.blue;
                            return const Color(
                                0xff16D69C); // null throus error in flutter 2.2+.
                          }),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Що я отримаю',
                          style: TextStyle(),
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            // if (states.contains(MaterialState.focused))
                            //   return Colors.red;
                            if (states.contains(MaterialState.hovered)) {
                              return const Color(0xff322153);
                            }
                            // if (states.contains(MaterialState.pressed))
                            //   return Colors.blue;
                            return const Color(
                                0xff16D69C); // null throus error in flutter 2.2+.
                          }),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Ціна',
                          style: TextStyle(),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        // style: ElevatedButton.styleFrom(
                        //   shape: StadiumBorder(),
                        //   side: BorderSide(color: Colors.red, width: 2),
                        // ),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          backgroundColor: Colors.white,
                          shape: const StadiumBorder(),
                          side: const BorderSide(
                              width: 2, // the thickness
                              color:
                                  Color(0xff322153) // the color of the border
                              ),
                          // side: BorderSide(color: Color(0xff322153), width: 2),
                        ),

                        // style: ButtonStyle(
                        //   overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        //     (Set<MaterialState> states) {
                        //       if (states.contains(MaterialState.hovered)) {
                        //         return const Color(0xff00F2A9);
                        //       } //<-- SEE HERE
                        //       return null; // Defer to the widget's default.
                        //     },
                        //   ),
                        // ),
                        child: const AutoSizeText(
                          'LOG IN',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff322153)),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        AutoSizeText(
                          'Вільно  говорити англійською простіше ніж ти думаєш',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff16D69C),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        AutoSizeText(
                          'Розкрийте свій ораторський потенціал з розмовним клубом Lets Talk',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xff322153),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        AutoSizeText(
                          'Тут ми обговорюємо цікаві теми, спілкуємося, сміємося та навчаємося легко та невимушено. Ми зустрічаємось у бібліотеці та насолоджуємось чаєм чи кавою. Друзі ласкаво просимо!',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff322153),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Center(
                          child: SizedBox(
                              height: 300,
                              width: 550,
                              child: YoutubeAppDemo()),
                        ),
                        SizedBox(),
                      ],
                    )),
              ],
            ),
          ),
        );
      }

      //mobile screen
      if (constrains.maxWidth < 700) {
        double width = MediaQuery.of(context).size.width;
        return Scaffold(
            key: _scaffoldKey,
            body: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                stops: [
                  0.4,
                  0.6,
                  0.7,
                  0.8,
                ],
                colors: [
                  Colors.white,
                  Color(0xffE5FEF6),
                  Color(0xffC3FCEA),
                  Color(0xff88F9D6),
                ],
              )),
              child: Padding(
                padding: EdgeInsets.fromLTRB(width / 10, 25.0, width / 10, 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: IconButton(
                          onPressed: () {
                            return _scaffoldKey.currentState?.openDrawer();
                          },
                          icon: const Icon(
                            Icons.menu,
                            size: 30.0,
                          )),
                    ),
                    Expanded(
                        flex: 10,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            // SizedBox(
                            //   height: 20,
                            // ),
                            // const SizedBox(),
                            AutoSizeText(
                              'Вільно  говорити англійською простіше ніж ти думаєш',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff16D69C),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // SizedBox(
                            //   height: 20,
                            // ),
                            AutoSizeText(
                              'Розкрийте свій ораторський потенціал з розмовним клубом Lets Talk',
                              style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff322153),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // SizedBox(
                            //   height: 20,
                            // ),
                            AutoSizeText(
                              'Тут ми обговорюємо цікаві теми, спілкуємося, сміємося та навчаємося легко та невимушено. Ми зустрічаємось у бібліотеці та насолоджуємось чаєм чи кавою. Друзі ласкаво просимо!',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff322153),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // const SizedBox(),
                            Center(
                              child: SizedBox(
                                  height: 170,
                                  width: 300,
                                  child: YoutubeAppDemo()),
                            ),
                            // const SizedBox(),
                            SizedBox(
                              height: 60,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            drawer: Drawer(
              width: MediaQuery.of(context).size.width,
              // Add a ListView to the drawer. This ensures the user can scroll
              // through the options in the drawer if there isn't enough vertical
              // space to fit everything.
              backgroundColor: const Color(0xFF0F0F0F),
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: [
                  SizedBox(
                    height: 95,
                    child: DrawerHeader(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(
                              size: 30.0,
                              Icons.menu,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          // const SizedBox(
                          //   width: 20,
                          // ),
                          // const Text('Settings',
                          //     style:
                          //         TextStyle(color: Colors.white, fontSize: 20)),
                        ],
                      ),
                    ),
                  ),
                  //here just link to browse
                  ListTile(
                    title: const Text('Філософія',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    // tileColor:   _selected ? Color(0xFF272727) : null,

                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),

                  //here just link to browse
                  ListTile(
                    title: const Text('Про нас',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    // tileColor:   _selected ? Color(0xFF272727) : null,

                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Що я отримаю',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    // tileColor:   _selected ? Color(0xFF272727) : null,

                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Ціна',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    // tileColor:   _selected ? Color(0xFF272727) : null,

                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ));
      }

      return const Text('null');
    });
  }
}
