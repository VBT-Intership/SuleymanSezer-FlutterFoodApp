import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(flex: 1, child: topNavigation()),
            Expanded(flex: 2, child: topListView()),
            Expanded(flex: 4, child: bottomCard()),
          ],
        ),
      ),
    );
  }
}

Card bottomCard() {
  return Card(
    color: Colors.white70,
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(flex: 1, child: popularItem()),
          Expanded(flex: 4, child: bottomListView())
        ],
      ),
    ),
  );
}

Row popularItem() {
  return Row(
    children: [
      Expanded(flex: 1, child: popularItemIcon()),
      SizedBox(width: 10),
      Expanded(flex: 4, child: popularItemText()),
      Expanded(flex: 2, child: popularItemRightArrow()),
    ],
  );
}

Icon popularItemRightArrow() {
  return Icon(Icons.chevron_right, size: 32, color: Colors.black);
}

Column popularItemText() {
  return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        popularItemTextHeader(),
        popularItemTextCenter(),
      ]);
}

Text popularItemTextHeader() {
  return Text('Popular',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18));
}

Text popularItemTextCenter() {
  return Text("Monggo, entekno duwekmu!",
      style: TextStyle(color: Colors.black45));
}

Row topNavigation() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [titleText(), searchIcon()],
  );
}

Container topListView() {
  return Container(
    padding: EdgeInsets.only(left: 10),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, position) {
          return Column(
            children: [
              Expanded(flex: 10, child: topListviewImageItem()),
              Expanded(flex: 1, child: itemText()),
            ],
          );
        }),
  );
}

ListView bottomListView() {
  return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 6,
      itemBuilder: (context, position) {
        return bottomCardItem();
      });
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

Card popularItemIcon() {
  return Card(
    elevation: 2.0,
    color: Colors.red,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.elliptical(100, 100))),
    child: Padding(
        padding: EdgeInsets.all(8),
        child: Icon(Icons.favorite, color: Colors.white)),
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

Card topListviewImageItem() {
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

Card searchIcon() {
  return Card(
    elevation: 2.0,
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Padding(padding: EdgeInsets.all(8), child: Icon(Icons.search)),
  );
}

Padding titleText() {
  return Padding(
    padding: EdgeInsets.only(left: 10),
    child: Text(
      'What do you want\nto eat today?',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
  );
}

AppBar appBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.black),
      onPressed: () {},
    ),
    actions: [Icon(Icons.menu, color: Colors.black)],
  );
}
