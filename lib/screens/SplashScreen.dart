import 'package:eat_app/model/drink_model.dart';
import 'package:eat_app/model/food_model.dart';
import 'package:eat_app/network/service_connection.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  IServiceConnection serviceConnection = ServiceConnection();

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    List<DrinkModel> drinkList = await getDrinkList();
    List<FoodModel> foodList = await getFoodList();
    passHomeScreen(drinkList, foodList);
  }

  Future<List<DrinkModel>> getDrinkList() async {
    Future<List<DrinkModel>> liste = serviceConnection.getDrinkList();
    return liste;
  }

  Future<List<FoodModel>> getFoodList() async =>
      await serviceConnection.getFoodList();

  void passHomeScreen(List<DrinkModel> drinkList, List<FoodModel> foodList) {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
      return HomeScreen(drinkList, foodList);
    }), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.width * 0.4,
            child: CircularProgressIndicator()));
  }
}
