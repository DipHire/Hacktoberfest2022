class User {
  final String name;
  final String username;

  const User({required this.name, required this.username});

  static User fromJson(json) =>
      User(name: json['name'], username: json['username']);
}
