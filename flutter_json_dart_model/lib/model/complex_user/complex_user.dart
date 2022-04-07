import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'address.dart';

@JsonSerializable(explicitToJson: true)
class ComplexUser {
  final int userId;
  final String name;
  final String email;
  final String phone;
  final bool isActive;
  final Address address;

  ComplexUser(
      {required this.userId,
      required this.name,
      required this.email,
      required this.phone,
      required this.isActive,
      required this.address});

  factory ComplexUser.fromJson(Map<String, dynamic> json) => ComplexUser(
      userId: json["userId"],
      name: json["name"],
      email: json["email"],
      phone: json["phone"],
      isActive: json["isActive"],
      address: json["address"]);
}
