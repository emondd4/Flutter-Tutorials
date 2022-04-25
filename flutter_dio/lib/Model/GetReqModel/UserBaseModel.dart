import 'Data.dart';
import 'Support.dart';

class UserBaseModel {

  Data? data;
  Support? support;

  UserBaseModel({
      this.data, 
      this.support,});

  UserBaseModel.fromJson(dynamic json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    support = json['support'] != null ? Support.fromJson(json['support']) : null;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.toJson();
    }
    if (support != null) {
      map['support'] = support?.toJson();
    }
    return map;
  }

}