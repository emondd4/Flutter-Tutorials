class Support {

  String? url;
  String? text;

  Support({
      this.url, 
      this.text,});

  Support.fromJson(dynamic json) {
    url = json['url'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['text'] = text;
    return map;
  }

}