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
          return itemCard(widget.foodList[position].resimAdresleri);
        });
  }
}

Card itemCard(String imageAddress) {
  return Card(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    elevation: 5,
    margin: EdgeInsets.all(10),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Image.network(
      imageAddress,
      fit: BoxFit.fill,
    ),
  );
}

Row itemText() {
  return Row(
    children: [
      Text("Sweets - ", style: TextStyle(color: Colors.black45)),
      Text("CupCake", style: TextStyle(color: Colors.black)),
    ],
  );
}
