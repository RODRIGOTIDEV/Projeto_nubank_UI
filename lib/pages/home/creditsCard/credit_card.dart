import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:projeto_nubank/controller/controller_home_page.dart';
import 'package:projeto_nubank/utils/colors_standard.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 12,
        children: [
          _iconCreditCard(),
          _textCarditCard(),
          _invoice(),
          _limitDisponible(),
          _installments()
        ],
      ),
    );
  }

  _iconCreditCard() {
    return const Icon(MdiIcons.creditCard);
  }

  _textCarditCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Cartão de Credito',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  _invoice() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Fatura atual',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 12,
        ),
        GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (ControllerHomePage) {
              return Text(
                ControllerHomePage.creditCardValue,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              );
            }),
      ],
    );
  }

  _limitDisponible() {
    return const Text(
      'Limite disponivel de R\$ 4.000,00',
      style: TextStyle(color: Colors.grey),
    );
  }

  _installments() {
    return Container(
      margin: const EdgeInsets.only(top: 4, bottom: 16),
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
          color: greColor, borderRadius: BorderRadius.circular(15)),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        child: const Text(
          'Parcelar compras',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
