import 'package:flutter/material.dart';
import 'package:nubank/global/utils/colors_standard.dart';

class HomeNotifications extends StatelessWidget {
  const HomeNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(top: 22, bottom: 18),
      child: Row(
        children: [
          const SizedBox(width: 16),
          _income(
              firstTitle: 'Prêmios mensais com Nubank',
              secontTitle: 'Vida a partir de R\$4/mês',
              firstTitlePrimary: false,
              secontTitlePrimary: false),
          _income(
              firstTitle: 'Facilite seu dia a dia usando o',
              secontTitle: 'Assistente de Pagamentos',
              firstTitlePrimary: false,
              secontTitlePrimary: true),
          _income(
              firstTitle: 'Convide amigos para o Nubank',
              secontTitle: 'e desbloquie brasões incríveis.',
              firstTitlePrimary: true,
              secontTitlePrimary: false),
          const SizedBox(width: 16),
        ],
      ),
    );
  }

  _income(
      {required String firstTitle,
      required String secontTitle,
      required bool firstTitlePrimary,
      required bool secontTitlePrimary}) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      padding: const EdgeInsets.only(top: 20, left: 26, right: 60, bottom: 20),
      decoration: BoxDecoration(
        color: grayColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            firstTitle,
            style: TextStyle(
              color: firstTitlePrimary ? primaryColor : blackColor,
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
          ),
          Text(
            secontTitle,
            style: TextStyle(
              color: secontTitlePrimary ? primaryColor : blackColor,
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
