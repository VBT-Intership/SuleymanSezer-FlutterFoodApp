import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../bottom_list_view.dart';
import '../top_list_view.dart';

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
            Expanded(flex: 2, child: TopListView()),
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
          Expanded(flex: 4, child: BottomListView())
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

ListView bottomListView() {
  return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 6,
      itemBuilder: (context, position) {
        return bottomCardItem();
      });
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
