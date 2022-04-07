class User {
  final int userId;
  final String name;
  final String email;
  final String phone;
  final bool isActive;

  User(
      {required this.userId,
      required this.name,
      required this.email,
      required this.phone,
      required this.isActive});

  factory User.fromJson(Map<String, dynamic> json) => User(
      userId: json["userId"],
      name: json["name"],
      email: json["email"],
      phone: json["phone"],
      isActive: json["isActive"]);

  Map<String, dynamic> toJson() => {
    'name' : name,
    'userId' : userId,
    'phone' : phone,
    'email' : email,
    'isActive' : isActive
  };

}
