import 'dart:convert';

import 'package:eat_app/model/drink_model.dart';
import 'package:eat_app/model/food_model.dart';
import 'package:http/http.dart' as http;

class Connection {
  Future<List<DrinkModel>> getDrinkList() async {
    var url = "https://popular-food-app.web.app/drinkList";
    var response = await http.get(url);

    List<DrinkModel> drinkModelList = new List();
    if (response.statusCode == 200) {
      List<dynamic> jsonListesi = json.decode(response.body);
      for (int i = 0; i < jsonListesi.length; i++) {
        DrinkModel tempModel =
            DrinkModel.fromJson(json.decode(response.body)[i]);
        drinkModelList.add(tempModel);
      }
    } else {
      print("error : " + response.statusCode.toString());
    }
    return drinkModelList;
  }

  Future<List<FoodModel>> getFoodList() async {
    var url = "https://popular-food-app.web.app/foodList";
    var response = await http.get(url);

    List<FoodModel> foodModelList = new List();
    if (response.statusCode == 200) {
      List<dynamic> liste = json.decode(response.body);
      for (int i = 0; i < liste.length; i++) {
        FoodModel tempModel = FoodModel.fromJson(json.decode(response.body)[i]);
        foodModelList.add(tempModel);
      }
    } else {
      print("error : " + response.statusCode.toString());
    }
    return foodModelList;
  }
}
