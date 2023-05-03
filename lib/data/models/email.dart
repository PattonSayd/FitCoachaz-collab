class Email {
  Email({
    required this.uid,
    required this.email,
    // required this.isVerified,
  });

  final String uid;
  final String email;
  // final bool isVerified;

  factory Email.fromJson(Map<String, dynamic> json) => Email(
        uid: json['uid'],
        email: json['email'],
        // isVerified: json['isVerified'],
      );
}
