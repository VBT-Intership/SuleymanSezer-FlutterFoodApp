class DrinkModel {
  String resimAdresi;
  String icecekAdi;
  String icecekUcreti;
  String icecekTag1;
  String icecekTag2;
  String tagBdColor1;
  String tagBdColor2;
  String tagTxtColor1;
  String tagTxtColor2;
  String icecekAciklamasi;

  DrinkModel(
      {this.resimAdresi,
      this.icecekAdi,
      this.icecekUcreti,
      this.icecekTag1,
      this.icecekTag2,
      this.tagBdColor1,
      this.tagBdColor2,
      this.tagTxtColor1,
      this.tagTxtColor2,
      this.icecekAciklamasi});

  DrinkModel.fromJson(Map<String, dynamic> json) {
    resimAdresi = json['resimAdresi'];
    icecekAdi = json['icecekAdi'];
    icecekUcreti = json['icecekUcreti'];
    icecekTag1 = json['icecekTag1'];
    icecekTag2 = json['icecekTag2'];
    tagBdColor1 = json['tagBdColor1'];
    tagBdColor2 = json['tagBdColor2'];
    tagTxtColor1 = json['tagTxtColor1'];
    tagTxtColor2 = json['tagTxtColor2'];
    icecekAciklamasi = json['icecekAciklamasi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resimAdresi'] = this.resimAdresi;
    data['icecekAdi'] = this.icecekAdi;
    data['icecekUcreti'] = this.icecekUcreti;
    data['icecekTag1'] = this.icecekTag1;
    data['icecekTag2'] = this.icecekTag2;
    data['tagBdColor1'] = this.tagBdColor1;
    data['tagBdColor2'] = this.tagBdColor2;
    data['tagTxtColor1'] = this.tagTxtColor1;
    data['tagTxtColor2'] = this.tagTxtColor2;
    data['icecekAciklamasi'] = this.icecekAciklamasi;
    return data;
  }
}
