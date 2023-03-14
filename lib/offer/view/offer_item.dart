import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/video.dart';

class OfferItem extends StatefulWidget {
  const OfferItem({Key? key}) : super(key: key);

  @override
  State<OfferItem> createState() => _OfferItemState();
}

class _OfferItemState extends State<OfferItem> {
  final ScrollController controller = ScrollController();
  List<bool> _isShowQuestions = [false,false,false,false,false];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains) {
      //desktop
      if (constrains.maxWidth >= 1200) {
        double width = MediaQuery.of(context).size.width;
        print('big screen');
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                height: 900.0,
                width: double.infinity,
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
                  padding:
                      EdgeInsets.fromLTRB(width / 5, 25.0, width / 5, 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Вільно англійською простіше ніж ти думаєш',
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xff16D69C),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Розкрийте свій ораторський потенціал з розмовним клубом Lets Talk',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xff322153),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Тут ми обговорюємо цікаві теми, спілкуємося, сміємося та навчаємося легко та невимушено. Ми зустрічаємось у бібліотеці та насолоджуємось чаєм чи кавою. Друзі ласкаво просимо!',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff322153),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Expanded(child: YoutubeAppDemo()),
                    ],
                  ),
                )),
            Container(
              height: 200,
              child: Padding(
                padding: EdgeInsets.fromLTRB(width / 5, 25.0, width / 5, 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Our Teaching Philosophy',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff322153),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                  child: Icon(Icons.add),
                                ),
                              ),
                              TextSpan(text: 'Created with '),
                              TextSpan(text: 'By Michael'),
                            ],
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                  child: Icon(Icons.add),
                                ),
                              ),
                              TextSpan(text: 'Created with '),
                              TextSpan(text: 'By Michael'),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
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
                      Container(
                        // width: 300.0,
                        child: Image.asset(
                          'assets/reviews/reviews-ins1.jpg',
                          // height: 300,
                          // width: 200,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        // width: 200.0,
                        child: Image.asset('assets/reviews/reviews-ins2.jpg'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        // width: 200.0,
                        child: Image.asset('assets/reviews/reviews-ins3.jpeg'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        // width: 200.0,
                        child: Image.asset('assets/reviews/reviews-ins4.jpg'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        // width: 200.0,
                        child: Image.asset('assets/reviews/reviews-ins5.jpg'),
                      ),
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
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 2600,
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
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff00F2A9),
                            width: 3,
                          ),
                          borderRadius:
                              BorderRadius.all(Radius.circular(12)),
                        ),
                        child: SizedBox(
                          // width: 500,
                          height: 400,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('Практика мовлення:'),
                                  Text('Speaking  club дає вам можливість практикувати мовлення в безпечній та дружній атмосфері. '),
                                  Text('Це допоможе покращити вашу вимову, граматику та лексику.'),
                                ],
                              ),
                              ClipRRect(
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
                                    )
                                ),
                              ),
                            ],
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
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff00F2A9),
                            width: 3,
                          ),
                          borderRadius:
                          BorderRadius.all(Radius.circular(12)),
                        ),
                        child: SizedBox(
                          // width: 500,
                          height: 500,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('Впевненість:'),
                                  Text('Регулярна практика мовлення допоможе вам стати більш впевненим в мовленні'),
                                  Text('Це дуже корисно як у професійній сфері, так і в особистому житті.'),
                                ],
                              ),
                              ClipRRect(
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
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
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
                          borderRadius:
                          BorderRadius.all(Radius.circular(12)),
                        ),
                        child: SizedBox(
                          // width: 500,
                          height: 500,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('Нові знайомства:'),
                                  Text('Speaking club - це також можливість зустрічатися з новими людьми.'),
                                  Text('Які мають спільний інтерес до вивчення іноземних мов.'),
                                ],
                              ),
                              ClipRRect(
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
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Center(
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff00F2A9),
                            width: 3,

                          ),
                          borderRadius:BorderRadius.all(Radius.circular(12)),
                        ),
                        child: SizedBox(
                          // width: 500,
                          height: 500,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('Корисні поради:'),
                                  Text('Учасники Speaking club можуть ділитися порадами та прийомами.'),
                                  Text('Ви також можете дізнатися про корисні ресурси та інструменти для вивчення мови.'),
                                ],
                              ),
                              ClipRRect(
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
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Center(
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color(0xff00F2A9),
                            width: 3,
                          ),
                          borderRadius:
                          BorderRadius.all(Radius.circular(12)),
                        ),
                        child: SizedBox(
                          // width: 500,
                          height: 500,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('Ігри: Вивчення мови це не лише рутина,а і цікавий та забавний процесс. '),
                                  Text('Вивчення мови це не лише рутина,а і цікавий та забавний процесс. '),
                                  Text('Більш ефективному засвоєнню матеріалу'),
                                  Text('Роблять процес вивчення більш захоплюючим та ефективним.'),
                                ],
                              ),
                              ClipRRect(
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
                                    )
                                ),
                              ),
                            ],
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
              height: 500,
              child: Padding(
                padding: EdgeInsets.fromLTRB(width / 5, 25.0, width / 5, 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 40,),
                        Text(
                          'Про нас',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xff16D69C),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 40,),
                        Text('Працюєм для тих, хто хоче швидко покращити свою англійську мову.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Наша мета - допомогти нашим клієнтам стати впевненішими в спілкуванні',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('розширити свій словниковий запас та покращити вимову.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Пропонуємо різні формати - від онлайн зустрічей до живих зустрічей з носіями мови',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Групові та індивідуальні заняття, тематичні клуби та багато іншого. ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Вибирайте той формат, який вам більше підходить та допоможе досягти результату.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Ми професіонали з багаторічним досвідом роботи викладачів англійської мови ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Допоможем вам покращити вашу мову, граматику',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Та розширити свій словниковий запас.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Не витрачайте час на пошук ефективних методів вивчення англійської мови - ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Приєднуйтесь до Speaking clubs вже сьогодні!',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    ClipRRect(
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
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // color: const Color(0xff322153),
              height: 550,
              child: Padding(
                padding: EdgeInsets.fromLTRB(width / 5, 25.0, width / 5, 25.0),
                child: Column(
                  children: [
                    SizedBox(height: 40,),
                    Text(
                      'Питання що часто задають',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xff16D69C),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(
                      child: ListTile(
                        title: Text('Які формати Speaking club пропонує ваша компанія?'),
                        trailing: Icon(Icons.arrow_drop_down_circle),
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
                      child: Text('від онлайн зустрічей до живих зустрічей з носіями мови')
                    ),
                    SizedBox(height: 20,),
                    Card(
                      child: ListTile(
                        title: Text('Які вимоги до рівня англійської мови для участі в Speaking club?'),
                        trailing: Icon(Icons.arrow_drop_down_circle),
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
                        child: Text('Ми приймаємо учасників на всіх рівнях володіння англійською мовою - від початківців до продвинутих. Від наших учасників очікується бажання вивчати мову та брати активну участь у заняттях.')
                    ),
                    SizedBox(height: 20,),
                    Card(
                      child: ListTile(
                        title: Text('Які вимоги до рівня англійської мови для участі в Speaking club?'),
                        trailing: Icon(Icons.arrow_drop_down_circle),
                        onTap: () {
                          setState(
                                () {
                              _isShowQuestions[2] = !_isShowQuestions[2];
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20,),
                    Visibility(
                        visible: _isShowQuestions[2],
                        child: Text('Теми для обговорення на заняттях Speaking club можуть бути різними - від повсякденного спілкування до бізнес-тем. Ми стараємося підібрати теми, які будуть цікавими для наших учасників та допоможуть їм покращити рівень володіння англійською мовою')
                    ),
                    Card(
                      child: ListTile(
                        title: Text('Чи можна взяти пробне заняття?'),
                        trailing: Icon(Icons.arrow_drop_down_circle),
                        onTap: () {
                          setState(
                                () {
                              _isShowQuestions[3] = !_isShowQuestions[3];
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20,),
                    Visibility(
                      visible: _isShowQuestions[3],
                      child: Text('Так, ми пропонуємо пробне заняття, під час якого ви зможете оцінити наші методи навчання та визначити, чи підходить вам формат Speaking club.')),
                    Card(
                      child: ListTile(
                        title: Text('Які вікові обмеження для участі в Speaking club?'),
                        trailing: Icon(Icons.arrow_drop_down_circle),
                        onTap: () {
                          setState(
                                () {
                              _isShowQuestions[4] = !_isShowQuestions[4];
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20,),
                    Visibility(
                        visible: _isShowQuestions[4],
                        child: Text('У нас немає вікових обмежень для участі в Speaking club. Ми раді бачити наших учасників будь-якого віку, які бажають вивчати англійську мову та розвиватися комунікативно?')),
                  ],
                ),
              )
            ),
            Container(
              height: 600,
              child: Padding(
                padding: EdgeInsets.fromLTRB(width / 5, 25.0, width / 5, 25.0),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Text('Отримай Справжній Результат',
                        style: TextStyle(
                          fontSize: 24,
                          color: const Color(0xff322153),
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      SizedBox(height: 20,),
                      Text('Якщо ви справді докладаєте всіх зусиль але заговорити чи покращити свою розмовну мову не вийде',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xff322153),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Тоді ми повернемо вам кошти. Ви можете скасувати абонемент в будь-який час',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xff322153),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text('Вам непотрібно роками вивчати Англійську щоб гарно на ній говорити',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xff322153),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Так вам буде спочатку незручно але результат того вартий',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xff322153),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text('Це чудова можливість познайомитися зі схожими за інтересами людьми, ',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xff322153),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('знайти нових друзів та отримати можливість для співпраці та розвитку в різних галузях.',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xff322153),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/img/telegram.png',
                                height: 150,
                                width: 100,
                              ),
                              Text('Ми створили постійно доступний портал в телеграмі'),
                              Text('Де публікуєм новини/івенти і цікавинки клубу'),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/img/profits.png',
                                height: 150,
                                width: 100,
                              ),
                              Text('Відкриємо нові кар\'єрні можливості для вас. '),
                              Text('В середньому, люди з хорошим рівнем англ '),
                              Text('заробляють на 30% більше ніж інші'),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/img/goal.png',
                                height: 150,
                                width: 100,
                              ),
                              Text('Наша програма спільноти надасть вам все,'),
                              Text('Що необхідно для ваших цілей.'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 600,
              child: Padding(
                padding: EdgeInsets.fromLTRB(width / 5, 25.0, width / 5, 25.0),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Text('Ціни',
                        style: TextStyle(
                          fontSize: 24,
                          color: const Color(0xff322153),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text('Якщо ви справді докладаєте всіх зусиль але заговорити чи покращити свою розмовну мову не вийде',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xff322153),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Тоді ми повернемо вам кошти. Ви можете скасувати абонемент в будь-який час',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xff322153),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text('Вам непотрібно роками вивчати Англійську щоб гарно на ній говорити',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xff322153),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Так вам буде спочатку незручно але результат того вартий',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xff322153),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text('Це чудова можливість познайомитися зі схожими за інтересами людьми, ',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xff322153),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('знайти нових друзів та отримати можливість для співпраці та розвитку в різних галузях.',
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xff322153),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/img/telegram.png',
                                height: 150,
                                width: 100,
                              ),
                              Text('Ми створили постійно доступний портал в телеграмі'),
                              Text('Де публікуєм новини/івенти і цікавинки клубу'),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/img/profits.png',
                                height: 150,
                                width: 100,
                              ),
                              Text('Відкриємо нові кар\'єрні можливості для вас. '),
                              Text('В середньому, люди з хорошим рівнем англ '),
                              Text('заробляють на 30% більше ніж інші'),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/img/goal.png',
                                height: 150,
                                width: 100,
                              ),
                              Text('Наша програма спільноти надасть вам все,'),
                              Text('Що необхідно для ваших цілей.'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Expanded(
            //     child: Text(
            // //         'Практика мовлення: Speaking  club дає вам можливість практикувати мовлення в безпечній та дружній атмосфері. Це допоможе покращити вашу вимову, граматику та лексику.')),
            // Expanded(
            //     child: Text(
            //         'Впевненість: Регулярна практика мовлення допоможе вам стати більш впевненим в мовленні, що може бути корисно як у професійній сфері, так і в особистому житті.')),
            // Expanded(
            //     child: Text(
            //         'Нові знайомства: Speaking club - це також можливість зустрічатися з новими людьми, які мають спільний інтерес до вивчення іноземних мов.')),
            // Expanded(
            //     child: Text(
            //         'Корисні поради: Учасники Speaking club можуть ділитися порадами та прийомами, які допомагають у навчанні мови. Ви також можете дізнатися про корисні ресурси та інструменти для вивчення мови.')),
            // Expanded(
            //     child: Text(
            //         'Ігри: Вивчення мови це не лише рутина,а і цікавий та забавний процесс.Це сприяє більш ефективному засвоєнню матеріалу, оскільки ви будете більш зацікавлені у тому, що ви вивчаєте. Узагалі, ігри можуть бути корисним інструментом у вивченні мови, оскільки вони можуть зробити процес вивчення більш захоплюючим та ефективним.')),
            // Expanded(child: Text('Що таке Lets talk: про нас інфа')),
            // Expanded(child: Text('Приєднатись призив до дії')),
            // Expanded(child: Text('Чого ми навчаємо? перелік')),
            // Expanded(
            //     child: Text(
            //         'Отримай реальні результати. Далі потиваційна хуйня яка грає з емоціями людини та дає можливість повернути бабки якщо ви невідчуєте прогрессу')),
            Expanded(child: Text('Блок з цінами')),
            Expanded(
                child:
                    Text('Вєбати ще один блок з скрінами про гарні відгуки')),
            Expanded(
                child: Text('Блок з популярними питаннями та відповідями')),
          ],
        );
      }

      //Tablet
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

      //mobile screen
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
