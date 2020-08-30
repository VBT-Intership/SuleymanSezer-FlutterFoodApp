import 'package:flutter/material.dart';

class BottomListView extends StatefulWidget {
  @override
  _BottomListViewState createState() => _BottomListViewState();
}

class _BottomListViewState extends State<BottomListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 6,
        itemBuilder: (context, position) {
          return bottomCardItem();
        });
  }
}

Card bottomCardItem() {
  return Card(
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    child: Row(
      children: [
        Expanded(flex: 1, child: bottomListviewImageItem()),
        Expanded(flex: 3, child: bottomCardText()),
      ],
    ),
  );
}

Card bottomListviewImageItem() {
  return Card(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    elevation: 5,
    margin: EdgeInsets.all(10),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Image.network(
      "https://www.handletheheat.com/wp-content/uploads/2015/03/Best-Birthday-Cake-with-milk-chocolate-buttercream-SQUARE.jpg",
      fit: BoxFit.fill,
    ),
  );
}

Column bottomCardText() {
  return Column(
    children: [
      Container(alignment: Alignment.topLeft, child: bottomCardTextHeader()),
      Container(
          alignment: Alignment.topLeft,
          child: bottomCardCenterTag(Colors.green, Colors.greenAccent,
              Colors.lightBlueAccent, Colors.blue)),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(child: bottomCardTextBottomLeft()),
          Container(
              margin: EdgeInsets.only(right: 6),
              child: bottomCardTextBottomRight()),
        ],
      )
    ],
  );
}

Text bottomCardTextHeader() {
  return Text("Banana Goreng - ",
      style: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold));
}

Row bottomCardCenterTag(Color cardTxtColor1, Color cardBdColor1,
    Color cardTxtColor2, Color cardBdColor2) {
  return Row(
    children: [
      Card(
        color: cardBdColor1,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text("Sweets - ", style: TextStyle(color: cardTxtColor1)),
        ),
      ),
      Card(
        color: cardBdColor2,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text("Sweets - ", style: TextStyle(color: cardTxtColor2)),
        ),
      )
    ],
  );
}

Text bottomCardTextBottomLeft() {
  return Text("Warung Buyayuk ", style: TextStyle(color: Colors.black45));
}

Text bottomCardTextBottomRight() {
  return Text("Rp. 12.000 ",
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold));
}
