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
    {"name": "Gauri Bhand", "username": "Gauri023"},
    {"name": "Aashvi Kothari", "username": "AashviKothari"},
    {"name": "Rahul Patnaik", "username": "clichepasta"},
    {"name": "Jay", "username": "jjgajjar04069999"},
    {"name": "Jayaditya Mishra", "username": "JayM2510"},
    {"name": "Vedika Sangle", "username": "vedikasangle"},
    {"name": "Abhishek Bhatt", "username": "bhattabhi013"},
    {"name": "Harsh Mudgal", "username": "dragoonoid"},
    {"name": "Mere Sai", "username": "mere-sai"},
    {"name": "Prateek Krishna", "username": "PrateekKrishna"},
    {"name": "Vikram Markali", "username": "Vikram739"},
    {"name": "Karthik Sudhan", "username": "karthik2607"},
    {"name": "Mayank Gupta", "username": "rajmayank93"},
    {"name": "Mas Ayang", "username": "hilmykun"},
    {"name": "Mobasshir Imam", "username": "imobasshir"},
    {"name": "Ayush Kumar Pandit", "username": "Ayushpanditmoto"},
    {"name": "Pranjal Dubey", "username": "dubey2709"},
    {"name": "Ousepachan", "username": "Ousu"},
    {"name": "Abhishek Khairnar", "username":"abhishekkhairnar"},
    {"name": "Sumant Chaudhary", "username":"sumant7"}
    {"name": "Abhishek Khairnar", "username": "abhishekkhairnar"},
    {"name": "Avishek Kumar", "username": "KoolAbhi03"},
    {"name": "Abhishek Khairnar", "username":"abhishekkhairnar"}
    {"name": "Aryan", "username":"YosoyAryan"},
    {"name": "Abhishek Khairnar", "username":"abhishekkhairnar"},
    {"name": "Astha", "username": "arshivaastha"},
    {"name": "utkarsh singh", "username":"utksin13"}
    {"name": "Abhishek Khairnar", "username": "abhishekkhairnar"},
    {"name": "Vaibhav Prajapati", "username": "VaibhavdLights"},
    {"name": "Saransh Shankar", "username": "Wise-Wizard"},

  ];

  return data.map<User>(User.fromJson).toList();
}
