class LoginResponseBaseModel {

  int? responseStatus;
  String? message;
  String? data;

  LoginResponseBaseModel({
      this.responseStatus, 
      this.message, 
      this.data,});

  LoginResponseBaseModel.fromJson(dynamic json) {
    responseStatus = json['response_status'];
    message = json['message'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['response_status'] = responseStatus;
    map['message'] = message;
    map['data'] = data;
    return map;
  }

}