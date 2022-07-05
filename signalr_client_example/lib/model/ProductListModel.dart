class ProductListBaseModel {
  ProductListBaseModel({
      this.name, 
      this.price, 
      this.isAvailable, 
      this.id, 
      this.isDelete,});

  ProductListBaseModel.fromJson(dynamic json) {
    name = json['name'];
    price = json['price'];
    isAvailable = json['isAvailable'];
    id = json['id'];
    isDelete = json['isDelete'];
  }
  String? name;
  int? price;
  bool? isAvailable;
  String? id;
  bool? isDelete;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['price'] = price;
    map['isAvailable'] = isAvailable;
    map['id'] = id;
    map['isDelete'] = isDelete;
    return map;
  }

}