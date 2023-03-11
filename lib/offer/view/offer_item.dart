import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/video.dart';

class OfferItem extends StatefulWidget {
  const OfferItem({Key? key}) : super(key: key);

  @override
  State<OfferItem> createState() => _OfferItemState();
}

class _OfferItemState extends State<OfferItem> {


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
            Expanded(child: Text('Що таке Lets talk: про нас інфа')),
            Expanded(child: Text('Приєднатись призив до дії')),
            Expanded(child: Text('Чого ми навчаємо? перелік')),
            Expanded(
                child: Text(
                    'Отримай реальні результати. Далі потиваційна хуйня яка грає з емоціями людини та дає можливість повернути бабки якщо ви невідчуєте прогрессу')),
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
