import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/global/utils/colors_standard.dart';

class MyCreditCards extends StatelessWidget {
  const MyCreditCards({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.fromLTRB(20, 4, 20, 4),
        decoration: BoxDecoration(
          color: grayColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(MdiIcons.creditCardOutline, color: blackColor),
            const SizedBox(width: 12),
            Text(
              'Meus Cartões',
              style: TextStyle(
                color: blackColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
