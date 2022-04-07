import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Address {
  final String street;
  final String area;
  @JsonKey(name: 'postal_code')
  final String postalCode;

  Address({required this.street, required this.area, required this.postalCode});

  factory Address.fromJson(Map<String, dynamic> json) => Address(
      street: json["street"],
      area: json["area"],
      postalCode: json["postal_code"]);
}
