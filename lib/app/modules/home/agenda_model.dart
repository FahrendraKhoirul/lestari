class Agenda {
  int? id;
  String? type;
  String? name;
  String? datetime;
  String? datetimeId;
  String? place;
  String? pic;
  String? desc;
  int? userId;
  String? verifiedAt;
  String? createdAt;
  String? updatedAt;
  List<Image>? image;
  List<Image>? media;

  Agenda(
      {this.id,
      this.type,
      this.name,
      this.datetime,
      this.datetimeId,
      this.place,
      this.pic,
      this.desc,
      this.userId,
      this.verifiedAt,
      this.createdAt,
      this.updatedAt,
      this.image,
      this.media});

  Agenda.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    name = json['name'];
    datetime = json['datetime'];
    datetimeId = json['datetime_id'];
    place = json['place'];
    pic = json['pic'];
    desc = json['desc'];
    userId = json['user_id'];
    verifiedAt = json['verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['image'] != null) {
      image = <Image>[];
      json['image'].forEach((v) {
        image!.add(new Image.fromJson(v));
      });
    }
    if (json['media'] != null) {
      media = <Image>[];
      json['media'].forEach((v) {
        media!.add(new Image.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['name'] = this.name;
    data['datetime'] = this.datetime;
    data['datetime_id'] = this.datetimeId;
    data['place'] = this.place;
    data['pic'] = this.pic;
    data['desc'] = this.desc;
    data['user_id'] = this.userId;
    data['verified_at'] = this.verifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.image != null) {
      data['image'] = this.image!.map((v) => v.toJson()).toList();
    }
    if (this.media != null) {
      data['media'] = this.media!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Image {
  int? id;
  String? modelType;
  int? modelId;
  String? uuid;
  String? collectionName;
  String? name;
  String? fileName;
  String? mimeType;
  String? disk;
  String? conversionsDisk;
  int? size;
  int? orderColumn;
  String? createdAt;
  String? updatedAt;
  String? url;
  String? thumbnail;
  String? preview;

  Image(
      {this.id,
      this.modelType,
      this.modelId,
      this.uuid,
      this.collectionName,
      this.name,
      this.fileName,
      this.mimeType,
      this.disk,
      this.conversionsDisk,
      this.size,
      this.orderColumn,
      this.createdAt,
      this.updatedAt,
      this.url,
      this.thumbnail,
      this.preview});

  Image.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    modelType = json['model_type'];
    modelId = json['model_id'];
    uuid = json['uuid'];
    collectionName = json['collection_name'];
    name = json['name'];
    fileName = json['file_name'];
    mimeType = json['mime_type'];
    disk = json['disk'];
    conversionsDisk = json['conversions_disk'];
    size = json['size'];
    orderColumn = json['order_column'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    url = json['url'];
    thumbnail = json['thumbnail'];
    preview = json['preview'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['model_type'] = this.modelType;
    data['model_id'] = this.modelId;
    data['uuid'] = this.uuid;
    data['collection_name'] = this.collectionName;
    data['name'] = this.name;
    data['file_name'] = this.fileName;
    data['mime_type'] = this.mimeType;
    data['disk'] = this.disk;
    data['conversions_disk'] = this.conversionsDisk;
    data['size'] = this.size;
    data['order_column'] = this.orderColumn;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['url'] = this.url;
    data['thumbnail'] = this.thumbnail;
    data['preview'] = this.preview;
    return data;
  }
}
