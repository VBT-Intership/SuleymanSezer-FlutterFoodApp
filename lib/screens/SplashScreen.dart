import 'package:eat_app/model/drink_model.dart';
import 'package:eat_app/network/connection.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    getDrinkList();
  }

  void getDrinkList() async {
    Connection connection = Connection();
    List<DrinkModel> liste = await connection.getDrinkList();
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
      return HomeScreen(liste);
    }), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
