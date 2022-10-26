import 'package:flutter/cupertino.dart';
import 'package:projeto_nubank/pages/home/findOut/models/card_find_aut_more.dart';

class FindOutMore extends StatelessWidget {
  const FindOutMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Descubra mais',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          _fintOutCars(),
        ],
      ),
    );
  }

  _fintOutCars() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CardFindOutMore(
              imagem: '/image/cardNubank.jpg',
              buttonText: 'Conhecer',
              description: 'Sua liberdade financeira \n começa com você ..',
              title: 'Parcela compras no app'),
          SizedBox(
            width: 12,
          ),
          CardFindOutMore(
              imagem: '/image/cardNubank.jpg',
              buttonText: 'Conhecer',
              description: 'Sua liberdade financeira \n começa com você ..',
              title: 'Parcela compras no app'),
          SizedBox(
            width: 12,
          ),
          CardFindOutMore(
              imagem: '/image/cardNubank.jpg',
              buttonText: 'Conhecer',
              description: 'Indique e ganhe \n saiba mais  ..',
              title: 'Indica amigos')
        ],
      ),
    );
  }
}
