import 'contributors_screen/user.dart';

List<User> getUsers() {
  // Add your Name and username
  const data = [
    {"name": "Dip Hire", "username": "diphire"},
    {"name": "Elon Musk", "username": "dogefather"},
    {"name": "Tony Stark", "username": "imironman"},
    {"name": "Bill Gates", "username": "paymybills"},
    {"name": "jeff Bezos", "username": "imjeff"},
    {"name": "Mark Zuckerberg", "username": "mark85"},
    {"name": "Binod", "username": "binod69"},
    {"name": "Gauri Bhand","username":"Gauri023"},
  ];

  return data.map<User>(User.fromJson).toList();
}
