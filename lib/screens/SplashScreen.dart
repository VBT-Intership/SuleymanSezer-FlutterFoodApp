import 'package:eat_app/model/drink_model.dart';
import 'package:eat_app/model/food_model.dart';
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
    List<DrinkModel> drinkList = await connection.getDrinkList();
    List<FoodModel> foodList = await connection.getFoodList();
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
      return HomeScreen(drinkList, foodList);
    }), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
