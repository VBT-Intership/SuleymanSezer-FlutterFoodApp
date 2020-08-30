import 'package:flutter/material.dart';

class TopListView extends StatefulWidget {
  @override
  _TopListViewState createState() => _TopListViewState();
}

class _TopListViewState extends State<TopListView> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 5,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Image.network(
        "https://sugargeekshow.com/wp-content/uploads/2020/03/rainbow-cake-featured-scaled.jpg",
        fit: BoxFit.fill,
      ),
    );
  }
}

Row itemText() {
  return Row(
    children: [
      Text("Sweets - ", style: TextStyle(color: Colors.black45)),
      Text("CupCake", style: TextStyle(color: Colors.black)),
    ],
  );
}
