class FoodModel {
  String resimAdresleri;
  String tatliIsimleri;
  String tatliSayilari;

  FoodModel({this.resimAdresleri, this.tatliIsimleri, this.tatliSayilari});

  FoodModel.fromJson(Map<String, dynamic> json) {
    resimAdresleri = json['resimAdresleri'];
    tatliIsimleri = json['tatliIsimleri'];
    tatliSayilari = json['tatliSayilari'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resimAdresleri'] = this.resimAdresleri;
    data['tatliIsimleri'] = this.tatliIsimleri;
    data['tatliSayilari'] = this.tatliSayilari;
    return data;
  }
}
