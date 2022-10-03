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
    {"name": "Aashvi Kothari", "username":"AashviKothari"}, 
    {"name": "Rahul Patnaik", "username": "clichepasta"},
    {"name": "Jay", "username": "jjgajjar04069999"},
    {"name": "Jayaditya Mishra", "username": "JayM2510"},
    {"name": "Abhishek Bhatt", "username": "bhattabhi013"},
    {"name": "Harsh Mudgal", "username": "dragoonoid"},
    {"name": "Mere Sai", "username": "mere-sai"},
    {"name": "Prateek Krishna", "username": "PrateekKrishna"}
  ];

  return data.map<User>(User.fromJson).toList();
}
