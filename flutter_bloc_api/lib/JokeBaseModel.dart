class JokeBaseModel {
  JokeBaseModel({
      this.createdAt, 
      this.iconUrl, 
      this.id, 
      this.updatedAt, 
      this.url, 
      this.value,});

  JokeBaseModel.fromJson(dynamic json) {
    createdAt = json['created_at'];
    iconUrl = json['icon_url'];
    id = json['id'];
    updatedAt = json['updated_at'];
    url = json['url'];
    value = json['value'];
  }
  String? createdAt;
  String? iconUrl;
  String? id;
  String? updatedAt;
  String? url;
  String? value;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['created_at'] = createdAt;
    map['icon_url'] = iconUrl;
    map['id'] = id;
    map['updated_at'] = updatedAt;
    map['url'] = url;
    map['value'] = value;
    return map;
  }

}