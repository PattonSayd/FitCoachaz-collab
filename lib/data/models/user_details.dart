class UserDetails {
  final String uid;
  final String name;
  final String surname;
  final String phone;
  final bool isVerified;
  final String email;
  final String createAt;

  UserDetails({
    required this.uid,
    required this.name,
    required this.surname,
    required this.phone,
    required this.isVerified,
    required this.email,
    required this.createAt,
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) {
    return UserDetails(
      uid: json['uid'] ?? '',
      name: json['name'] ?? '',
      surname: json['surname'] ?? '',
      phone: json['phone'] ?? '',
      isVerified: json['isVerified'] ?? false,
      email: json['email'] ?? '',
      createAt: json['createAt'] ?? '',
    );
  }
}
