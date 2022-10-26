import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projeto_nubank/pages/home/account/account.dart';
import 'package:projeto_nubank/pages/home/actions/menu_itens.dart';
import 'package:projeto_nubank/pages/home/creditsCard/credit_card.dart';
import 'package:projeto_nubank/pages/home/findOut/find_out.dart';
import 'package:projeto_nubank/pages/home/investments/investments.dart';
import 'package:projeto_nubank/pages/home/model/header.dart' show Header;
import 'package:projeto_nubank/pages/home/shopping/shopping_view.dart';
import 'package:projeto_nubank/pages/security/security,Life.dart';

import 'creditsCard/my_credits_cards.dart';
import 'notification/notification_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Header(),
                AccountNubank(),
                MenuItens(),
                Divider(
                  thickness: 1.6,
                ),
                MyCreditCards(),
                NotificattionPage(),
                Divider(
                  thickness: 1.6,
                ),
                CreditCard(),
                Divider(
                  thickness: 1.6,
                ),
                Investments(),
                Divider(
                  thickness: 1.6,
                ),
                SecurityLife(),
                Divider(
                  thickness: 1.6,
                ),
                ShoppingView(),
                Divider(
                  thickness: 1.6,
                ),
                FindOutMore()
              ]),
        ),
      ),
    );
  }
}

PreferredSize _appBar() {
  return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ));
}
