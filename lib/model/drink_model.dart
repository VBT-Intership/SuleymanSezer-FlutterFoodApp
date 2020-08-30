class DrinkModel {
  String resimAdresi;
  String icecekAdi;
  String icecekUcreti;
  String icecekTag1;
  String icecekTag2;
  String tagColor1;
  String tagColor2;

  DrinkModel(
      {this.resimAdresi,
      this.icecekAdi,
      this.icecekUcreti,
      this.icecekTag1,
      this.icecekTag2,
      this.tagColor1,
      this.tagColor2});

  DrinkModel.fromJson(Map<String, dynamic> json) {
    resimAdresi = json['resimAdresi'];
    icecekAdi = json['icecekAdi'];
    icecekUcreti = json['icecekUcreti'];
    icecekTag1 = json['icecekTag1'];
    icecekTag2 = json['icecekTag2'];
    tagColor1 = json['tagColor1'];
    tagColor2 = json['tagColor2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resimAdresi'] = this.resimAdresi;
    data['icecekAdi'] = this.icecekAdi;
    data['icecekUcreti'] = this.icecekUcreti;
    data['icecekTag1'] = this.icecekTag1;
    data['icecekTag2'] = this.icecekTag2;
    data['tagColor1'] = this.tagColor1;
    data['tagColor2'] = this.tagColor2;
    return data;
  }
}
