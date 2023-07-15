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
        image!.add(Image.fromJson(v));
      });
    }
    if (json['media'] != null) {
      media = <Image>[];
      json['media'].forEach((v) {
        media!.add(Image.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['type'] = type;
    data['name'] = name;
    data['datetime'] = datetime;
    data['datetime_id'] = datetimeId;
    data['place'] = place;
    data['pic'] = pic;
    data['desc'] = desc;
    data['user_id'] = userId;
    data['verified_at'] = verifiedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (image != null) {
      data['image'] = image!.map((v) => v.toJson()).toList();
    }
    if (media != null) {
      data['media'] = media!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['model_type'] = modelType;
    data['model_id'] = modelId;
    data['uuid'] = uuid;
    data['collection_name'] = collectionName;
    data['name'] = name;
    data['file_name'] = fileName;
    data['mime_type'] = mimeType;
    data['disk'] = disk;
    data['conversions_disk'] = conversionsDisk;
    data['size'] = size;
    data['order_column'] = orderColumn;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['url'] = url;
    data['thumbnail'] = thumbnail;
    data['preview'] = preview;
    return data;
  }
}
