import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank/global/utils/colors_standard.dart';
import 'package:nubank/modules/home/widgets/account.dart';
import 'package:nubank/modules/home/widgets/header.dart';
import 'package:nubank/modules/profile/profile_view.dart';

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
            children: [
              Header(),
              Account(),
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
