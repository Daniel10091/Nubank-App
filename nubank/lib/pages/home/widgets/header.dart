import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/global/utils/colors_standard.dart';
import 'package:nubank/pages/home/controllers/header_controller.dart';
import 'package:nubank/pages/profile/profile_view.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      padding: const EdgeInsets.only(top: 20, left: 20, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _profile(),
              _options(),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          _welcome(),
        ],
      ),
    );
  }

  _profile() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            MdiIcons.accountOutline,
            color: whiteColor,
          ),
        ),
      ),
    );
  }

  _options() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GetBuilder<HeaderController>(
            init: HeaderController(),
            builder: (headerController) {
              return IconButton(
                onPressed: () => headerController.showBalance(),
                icon: Icon(
                  headerController.eyesValue
                      ? MdiIcons.eyeOutline
                      : MdiIcons.eyeOffOutline,
                  color: whiteColor,
                ),
                tooltip: 'Ver saldo',
              );
            }),
        IconButton(
          onPressed: () {},
          icon: Icon(
            MdiIcons.helpCircleOutline,
            color: whiteColor,
          ),
          tooltip: 'Informações',
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            MdiIcons.accountArrowRightOutline,
            color: whiteColor,
          ),
          tooltip: 'Indicar amigos',
        ),
      ],
    );
  }

  _welcome() {
    return Container(
      margin: const EdgeInsets.only(left: 6, bottom: 20),
      child: Text(
        'Olá, Daniel',
        style: TextStyle(
            color: whiteColor, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
