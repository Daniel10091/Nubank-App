import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/global/utils/colors_standard.dart';
import 'package:nubank/modules/account/controllers/account_controller.dart';
import 'package:nubank/modules/home/controllers/header_controller.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          height: 108,
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _account(),
              _balance(),
            ],
          )),
    );
  }

  _account() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Conta',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          MdiIcons.chevronRight,
          size: 24,
          color: blackColor.withOpacity(0.6),
        ),
      ],
    );
  }

  _balance() {
    return GetBuilder<AccountController>(
        init: AccountController(),
        builder: (accountController) {
          return GetBuilder<HeaderController>(builder: (headerController) {
            return Text(headerController.balance,
                style: TextStyle(
                    color: blackColor,
                    fontSize: headerController.eyesValue ? 20 : 26,
                    fontWeight: FontWeight.bold));
          });
        });
  }
}
