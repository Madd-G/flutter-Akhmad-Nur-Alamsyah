class User {
  String name;
  String email;
  Future<bool> isLogin;

  User({
    required this.name,
    required this.email,
    required this.isLogin,
  });
}

List<User> users = [];
