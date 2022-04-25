class PuttedBaseModel {

  String? name;
  String? job;
  String? updatedAt;

  PuttedBaseModel({
      this.name, 
      this.job, 
      this.updatedAt,});

  PuttedBaseModel.fromJson(dynamic json) {
    name = json['name'];
    job = json['job'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['job'] = job;
    map['updatedAt'] = updatedAt;
    return map;
  }

}