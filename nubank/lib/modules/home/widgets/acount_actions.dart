import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/global/utils/colors_standard.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 6, bottom: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
            direction: Axis.horizontal,
            // spacing: 10.0,
            // runSpacing: 10.0,
            children: [
              SizedBox.fromSize(size: const Size(21, 0)),
              _actionIcon(icon: MdiIcons.clover, title: 'Área Pix'),
              _actionIcon(icon: MdiIcons.barcode, title: 'Pagar'),
              _actionIcon(icon: MdiIcons.cash, title: 'Tranferir'),
              _actionIcon(icon: MdiIcons.cash, title: 'Deppositar'),
              _actionIcon(icon: MdiIcons.creditCard, title: 'Recarga'),
              _actionIcon(icon: MdiIcons.heartOutline, title: 'Doação'),
              SizedBox.fromSize(size: const Size(21, 0)),
            ]),
      ),
    );
  }

  _actionIcon({required IconData icon, required String title}) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
              padding: const EdgeInsets.all(26),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: grayColor,
              ),
              child: Icon(
                icon,
                color: blackColor,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: blackColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
