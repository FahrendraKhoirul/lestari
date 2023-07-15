class DataSampah {
  String? label;
  String? count;
  String? update;
  int? jakstraYear;
  String? jakstraMonthlyAverage;

  DataSampah(
      {this.label,
      this.count,
      this.update,
      this.jakstraYear,
      this.jakstraMonthlyAverage});

  DataSampah.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    count = json['count'];
    update = json['update'];
    jakstraYear = json['jakstra_year'];
    jakstraMonthlyAverage = json['jakstra_monthly_average'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['label'] = label;
    data['count'] = count;
    data['update'] = update;
    data['jakstra_year'] = jakstraYear;
    data['jakstra_monthly_average'] = jakstraMonthlyAverage;
    return data;
  }
}
