class PersonModel {
  String name;
  int age;
  String gender;
  String? occupation;
  String city;
  String maritialStatus;

  PersonModel({
    required this.name,
    required this.age,
    required this.gender,
    this.occupation,
    required this.city,
    required this.maritialStatus,
  });
}
