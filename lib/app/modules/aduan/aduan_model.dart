class Aduan {
  int? id;
  String? image;
  dynamic date;
  String? desc;
  dynamic address;
  dynamic lat;
  dynamic lng;
  dynamic isTsi;
  String? ntbcareReportId;
  String? createdAt;
  String? updatedAt;

  Aduan(
      {this.id,
      this.image,
      this.date,
      this.desc,
      this.address,
      this.lat,
      this.lng,
      this.isTsi,
      this.ntbcareReportId,
      this.createdAt,
      this.updatedAt});

  Aduan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    date = json['date'];
    desc = json['desc'];
    address = json['address'];
    lat = json['lat'];
    lng = json['lng'];
    isTsi = json['is_tsi'];
    ntbcareReportId = json['ntbcare_report_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['date'] = date;
    data['desc'] = desc;
    data['address'] = address;
    data['lat'] = lat;
    data['lng'] = lng;
    data['is_tsi'] = isTsi;
    data['ntbcare_report_id'] = ntbcareReportId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
