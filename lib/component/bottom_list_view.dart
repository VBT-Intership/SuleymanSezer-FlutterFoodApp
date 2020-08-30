import 'package:eat_app/model/drink_model.dart';
import 'package:flutter/material.dart';

class BottomListView extends StatefulWidget {
  @override
  _BottomListViewState createState() => _BottomListViewState();

  BottomListView(this.liste);

  final List<DrinkModel> liste;
}

class _BottomListViewState extends State<BottomListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: widget.liste.length,
        itemBuilder: (context, position) {
          return bottomCardItem(position, widget.liste);
        });
  }
}

Card bottomCardItem(int position, List<DrinkModel> liste) {
  return Card(
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    child: Row(
      children: [
        Expanded(flex: 1, child: bottomListviewImageItem(position, liste)),
        Expanded(flex: 3, child: bottomCardText(position, liste)),
      ],
    ),
  );
}

Card bottomListviewImageItem(int position, List<DrinkModel> liste) {
  return Card(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    elevation: 5,
    margin: EdgeInsets.all(10),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Image.network(
      liste[position].resimAdresi,
      fit: BoxFit.fill,
    ),
  );
}

Column bottomCardText(int position, List<DrinkModel> liste) {
  return Column(
    children: [
      Container(
          alignment: Alignment.topLeft,
          child: Text(liste[position].icecekAdi,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold))),
      Container(
          alignment: Alignment.topLeft,
          child: bottomCardCenterTag(position, liste)),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              width: 200,
              child: Text(liste[position].icecekAciklamasi,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(color: Colors.black45))),
          Container(
              margin: EdgeInsets.only(right: 20),
              child: Text(liste[position].icecekUcreti,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold))),
        ],
      )
    ],
  );
}

Row bottomCardCenterTag(int position, List<DrinkModel> liste) {
  return Row(
    children: [
      Card(
        color: _colorFromHex(liste[position].tagBdColor1),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10),
          child: Text(liste[position].icecekTag1,
              style: TextStyle(
                  color: _colorFromHex(liste[position].tagTxtColor1))),
        ),
      ),
      Card(
        color: _colorFromHex(liste[position].tagBdColor2),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10),
          child: Text(
            liste[position].icecekTag2,
            style:
                TextStyle(color: _colorFromHex(liste[position].tagTxtColor2)),
          ),
        ),
      )
    ],
  );
}

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}
