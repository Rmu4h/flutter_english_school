import 'package:auto_size_text/auto_size_text.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Container(
                  color: const Color(0xff322153),
                  height: 300,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(width / 5, 25.0, width / 5, 25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: TextButton(
                                          onPressed: () {},
                                          child: const AutoSizeText('Log In',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ))),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                          onPressed: () {},
                                          child: const AutoSizeText('Партнерство',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ))),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                          onPressed: () {},
                                          child:
                                              const AutoSizeText('Terms & Conditions',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ))),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const AutoSizeText('Privacy Policy',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Expanded(
                                      child: AutoSizeText(
                                        'Зв\'яжіться з нами',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                        onPressed: () {},
                                        child: ListTile(
                                          contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                                          leading: Image.asset(
                                            'assets/img/instagram.png',
                                            height: 30,
                                            width: 30,
                                          ),
                                          title: const AutoSizeText(
                                            'Наш Instagram',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8,),
                                    Expanded(
                                      child: SizedBox(
                                        // height: 50,
                                        width: 250,
                                        child: TextButton(
                                          onPressed: () {},
                                          child: ListTile(
                                            dense:true,
                                            contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                                            // visualDensity: const VisualDensity(horizontal: -4.0),
                                            leading: Image.asset(
                                              'assets/img/telegram.png',
                                              height: 30,
                                              width: 30,
                                            ),
                                            title: const AutoSizeText(
                                              'Наш Telegram',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const AutoSizeText(
                                          'Terms & Conditions',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const AutoSizeText(
                                          'Privacy Policy',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const Expanded(
                            child: SizedBox(
                          height: 30,
                        )),
                        const Expanded(
                          flex: 1,
                          child: AutoSizeText(
                            'Потрібна допомога? Зверніться до support@jointherealworld.com',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),
          ],
        );
      }

      if (constrains.maxWidth > 656 && constrains.maxWidth < 1400) {
        double width = MediaQuery.of(context).size.width;
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Container(
                  color: const Color(0xff322153),
                  height: 300,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: TextButton(
                                          onPressed: () {},
                                          child: const AutoSizeText('Log In',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ))),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                          onPressed: () {},
                                          child: const AutoSizeText('Партнерство',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ))),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                          onPressed: () {},
                                          child:
                                          const AutoSizeText('Terms & Conditions',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ))),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const AutoSizeText('Privacy Policy',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Expanded(
                                      child: AutoSizeText(
                                        'Зв\'яжіться з нами',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                        onPressed: () {},
                                        child: ListTile(
                                          contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                                          leading: Image.asset(
                                            'assets/img/instagram.png',
                                            height: 20,
                                            width: 20,
                                          ),
                                          title: const AutoSizeText(
                                            'Instagram',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8,),
                                    Expanded(
                                      child: SizedBox(
                                        // height: 50,
                                        width: 250,
                                        child: TextButton(
                                          onPressed: () {},
                                          child: ListTile(
                                            dense:true,
                                            contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                                            // visualDensity: const VisualDensity(horizontal: -4.0),
                                            leading: Image.asset(
                                              'assets/img/telegram.png',
                                              height: 20,
                                              width: 20,
                                            ),
                                            title: const AutoSizeText(
                                              'Telegram',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const AutoSizeText(
                                          'Terms & Conditions',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const AutoSizeText(
                                          'Privacy Policy',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const Expanded(
                            child: SizedBox(
                              height: 30,
                            )),
                        const Expanded(
                          flex: 1,
                          child: AutoSizeText(
                            'Потрібна допомога? Зверніться до support@jointherealworld.com',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),
          ],
        );
      }

      if (constrains.maxWidth < 657) {
        double width = MediaQuery.of(context).size.width;
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Container(
                  color: const Color(0xff322153),
                  height: 300,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25.0, 20, 25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: TextButton(
                                          onPressed: () {},
                                          child: const AutoSizeText('Log In',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ))),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                          onPressed: () {},
                                          child: const AutoSizeText('Партнерство',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ))),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                          onPressed: () {},
                                          child:
                                          const AutoSizeText('Terms & Conditions',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ))),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const AutoSizeText('Privacy Policy',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Expanded(
                                      child: AutoSizeText(
                                        'Зв\'яжіться з нами',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: TextButton(
                                        onPressed: () {},
                                        child: ListTile(
                                          contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                                          leading: Image.asset(
                                            'assets/img/instagram.png',
                                            height: 20,
                                            width: 20,
                                          ),
                                          title: const AutoSizeText(
                                            'Наш Instagram',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8,),
                                    Expanded(
                                      child: SizedBox(
                                        // height: 50,
                                        width: 250,
                                        child: TextButton(
                                          onPressed: () {},
                                          child: ListTile(
                                            dense:true,
                                            contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                                            // visualDensity: const VisualDensity(horizontal: -4.0),
                                            leading: Image.asset(
                                              'assets/img/telegram.png',
                                              height: 20,
                                              width: 20,
                                            ),
                                            title: const AutoSizeText(
                                              'Наш Telegram',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const Expanded(
                            child: SizedBox(
                              height: 20,
                            )),
                        const Expanded(
                          flex: 1,
                          child: AutoSizeText(
                            'Потрібна допомога? Зверніться до support@jointherealworld.com',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),
          ],
        );
      }
      return const Text('null');
    });
  }
}
