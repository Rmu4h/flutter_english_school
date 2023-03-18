import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FooterItem extends StatelessWidget {
  const FooterItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains) {
      if (constrains.maxWidth >= 1200) {
        double width = MediaQuery.of(context).size.width;
        return Column(
          children: [
            Container(
              color: const Color(0xff322153),
              height: 300,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.fromLTRB(width / 5, 25.0, width / 5, 25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text('Log In',
                                    style: TextStyle(
                                      color: Colors.white,
                                      // fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ))),
                            TextButton(
                                onPressed: () {},
                                child: const Text('Партнерство',
                                    style: TextStyle(
                                      color: Colors.white,
                                      // fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ))),
                            TextButton(
                                onPressed: () {},
                                child: const Text('Terms & Conditions',
                                    style: TextStyle(
                                      color: Colors.white,
                                      // fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ))),
                            TextButton(
                              onPressed: () {},
                              child: const Text('Privacy Policy',
                                  style: TextStyle(
                                    color: Colors.white,
                                    // fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Зв\'яжіться з нами',
                              style: TextStyle(
                                color: Colors.white,
                                // fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 200,
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/img/instagram.png',
                                  height: 30,
                                  width: 30,
                                ),
                                title: const Text('Наш Instagram',
                                  style: TextStyle(
                                    color: Colors.white,
                                    // fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 200,
                              child: ListTile(
                                leading: Image.asset(
                                  'assets/img/telegram.png',
                                  height: 30,
                                  width: 30,
                                ),
                                title: const Text(
                                  'Наш Telegram',
                                  style: TextStyle(
                                  color: Colors.white,
                                  // fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ),
                            ),
                            const Text(
                              'Terms & Conditions',
                              style: TextStyle(
                                color: Colors.white,
                                // fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text('Privacy Policy',
                              style: TextStyle(
                                color: Colors.white,
                                // fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    const Text(
                      'Потрібна допомога? Зверніться до support@jointherealworld.com',
                      style: TextStyle(
                        color: Colors.white,
                        // fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      }

      return const Text('null');
    });
  }
}
