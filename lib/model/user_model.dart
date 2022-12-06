class SignupUser {
  String name = '';
  SignupUser({
    required this.name,
  });
  Map<String, dynamic> toJson() => {
    'name': name,
  };
}