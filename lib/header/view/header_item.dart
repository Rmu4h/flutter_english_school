import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app.dart';

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
        print('big screen');
        return Padding(
              padding: EdgeInsets.fromLTRB(width/5, 25.0, width/5, 25.0),
              child: Container(
                // height: 100,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff00F2A9),
                        shape: StadiumBorder(),
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
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              // if (states.contains(MaterialState.focused))
                              //   return Colors.red;
                              if (states.contains(MaterialState.hovered))
                                return Color(0xff322153);
                              // if (states.contains(MaterialState.pressed))
                              //   return Colors.blue;
                              return const Color(
                                  0xff16D69C); // null throus error in flutter 2.2+.
                            }),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Філософія',
                        style: TextStyle(
                            fontSize: 20,
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              // if (states.contains(MaterialState.focused))
                              //   return Colors.red;
                              if (states.contains(MaterialState.hovered))
                                return Color(0xff322153);
                              // if (states.contains(MaterialState.pressed))
                              //   return Colors.blue;
                              return const Color(
                                  0xff16D69C); // null throus error in flutter 2.2+.
                            }),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Про нас',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Image.asset('assets/img/logo.png'),
                      iconSize: 50,
                      onPressed: () {},
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              // if (states.contains(MaterialState.focused))
                              //   return Colors.red;
                              if (states.contains(MaterialState.hovered))
                                return Color(0xff322153);
                              // if (states.contains(MaterialState.pressed))
                              //   return Colors.blue;
                              return const Color(
                                  0xff16D69C); // null throus error in flutter 2.2+.
                            }),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Що я отримаю',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              // if (states.contains(MaterialState.focused))
                              //   return Colors.red;
                              if (states.contains(MaterialState.hovered))
                                return Color(0xff322153);
                              // if (states.contains(MaterialState.pressed))
                              //   return Colors.blue;
                              return const Color(
                                  0xff16D69C); // null throus error in flutter 2.2+.
                            }),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Ціна',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('LOG IN'),
                      // style: ElevatedButton.styleFrom(
                      //   shape: StadiumBorder(),
                      //   side: BorderSide(color: Colors.red, width: 2),
                      // ),
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered))
                              return Color(0xff00F2A9); //<-- SEE HERE
                            return null; // Defer to the widget's default.
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
      }

      //Tablet
      if (constrains.maxWidth > 656 && constrains.maxWidth < 1400) {
        return Padding(
          padding: const EdgeInsets.all(25.0),
          // height: 200,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff00F2A9),
                  shape: StadiumBorder(),
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
                  foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    // if (states.contains(MaterialState.focused))
                    //   return Colors.red;
                    if (states.contains(MaterialState.hovered))
                      return Color(0xff322153);
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
                  foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    // if (states.contains(MaterialState.focused))
                    //   return Colors.red;
                    if (states.contains(MaterialState.hovered))
                      return Color(0xff322153);
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
                  foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    // if (states.contains(MaterialState.focused))
                    //   return Colors.red;
                    if (states.contains(MaterialState.hovered))
                      return Color(0xff322153);
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
                  foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    // if (states.contains(MaterialState.focused))
                    //   return Colors.red;
                    if (states.contains(MaterialState.hovered))
                      return Color(0xff322153);
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
                child: Text('LOG IN'),
                // style: ElevatedButton.styleFrom(
                //   shape: StadiumBorder(),
                //   side: BorderSide(color: Colors.red, width: 2),
                // ),
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Color(0xff00F2A9); //<-- SEE HERE
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      }

      //mobile screen
      if (constrains.maxWidth < 657) {
        return Scaffold(
            key: _scaffoldKey,
            body: Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 25.0, 10.0, 25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {
                                return _scaffoldKey.currentState?.openDrawer();
                              },
                              icon: const Icon(
                                Icons.menu,
                                size: 30.0,
                              )),
                        ],
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
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text('Settings',
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ],
                  ),
                ),
              ),
              //here just link to browse
              ListTile(
                title: const Text('Privacy Policy',
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
                title: const Text('Term and Service',
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
        )
        );
      }

      return const Text('null');
      return Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    });
  }
}
