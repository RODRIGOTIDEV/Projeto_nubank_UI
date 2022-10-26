import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:projeto_nubank/utils/colors_standard.dart';

class MyCreditCards extends StatelessWidget {
  const MyCreditCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.fromLTRB(16, 10, 20, 10),
      decoration: BoxDecoration(
        color: greColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: const [
          Icon(
            MdiIcons.creditCard,
            color: Colors.black,
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            'Meus cartões',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
