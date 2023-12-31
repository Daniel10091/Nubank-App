import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank/global/utils/colors_standard.dart';
import 'package:nubank/pages/creditCards/widgets/my_credit_cards.dart';
import 'package:nubank/pages/home/widgets/account.dart';
import 'package:nubank/pages/home/widgets/acount_actions.dart';
import 'package:nubank/pages/home/widgets/header.dart';
import 'package:nubank/pages/notifications/widgets/home_notifications.dart';
import 'package:nubank/pages/profile/profile_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: whiteColor,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              Account(),
              AccountActions(),
              // Divider(thickness: 1.6, color: Color.fromRGBO(240, 241, 245, 1)),
              MyCreditCards(),
              // Divider(thickness: 1.6, color: Color.fromRGBO(240, 241, 245, 1)),
              HomeNotifications(),
              Divider(thickness: 1.6, color: Color.fromRGBO(240, 241, 245, 1)),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: primaryColor,
      ),
    );
  }
}
