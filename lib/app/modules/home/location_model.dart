class Location {
  String? label;
  int? count;

  Location({this.label, this.count});

  Location.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['label'] = label;
    data['count'] = count;
    return data;
  }
}
