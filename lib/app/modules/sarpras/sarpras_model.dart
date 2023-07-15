class Sarpras {
  String? truck;
  String? pickup;
  String? tricycle;
  String? dray;
  String? scale;

  Sarpras({this.truck, this.pickup, this.tricycle, this.dray, this.scale});

  Sarpras.fromJson(Map<String, dynamic> json) {
    truck = json['truck'];
    pickup = json['pickup'];
    tricycle = json['tricycle'];
    dray = json['dray'];
    scale = json['scale'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['truck'] = truck;
    data['pickup'] = pickup;
    data['tricycle'] = tricycle;
    data['dray'] = dray;
    data['scale'] = scale;
    return data;
  }
}
