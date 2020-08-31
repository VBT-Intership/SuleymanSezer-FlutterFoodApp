import 'package:eat_app/model/food_model.dart';
import 'package:flutter/material.dart';

class TopListView extends StatefulWidget {
  @override
  _TopListViewState createState() => _TopListViewState();

  TopListView(this.foodList);

  List<FoodModel> foodList;
}

class _TopListViewState extends State<TopListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.foodList.length,
        itemBuilder: (context, position) {
          return itemCard(
              widget.foodList[position].resimAdresleri,
              widget.foodList[position].tatliIsimleri,
              widget.foodList[position].tatliSayilari);
        });
  }
}

Card itemCard(String imageAddress, String itemName, String itemNum) {
  return Card(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    elevation: 5,
    margin: EdgeInsets.all(10),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Column(
      children: [
        Expanded(
          flex: 5,
          child: Image.network(imageAddress, fit: BoxFit.fill),
        ),
        Expanded(flex: 1, child: itemText(itemName, itemNum))
      ],
    ),
  );
}

Row itemText(String itemName, String itemNum) {
  return Row(
    children: [
      Text("$itemName - ", style: TextStyle(color: Colors.black45)),
      Text("$itemNum", style: TextStyle(color: Colors.black)),
    ],
  );
}
