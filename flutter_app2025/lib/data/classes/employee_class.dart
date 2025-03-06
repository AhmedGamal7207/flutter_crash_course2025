class Employee {
  final int id;
  final String firstName;
  final String lastName;
  final String phone;
  final DateTime birthDate;
  final double salary;
  final String department;
  final DateTime createdAt;
  final String email;
  final String address;
  final String gender;
  final int experience;
  final bool isMarried;
  final DateTime updatedAt;

  const Employee({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.birthDate,
    required this.salary,
    required this.department,
    required this.createdAt,
    required this.email,
    required this.address,
    required this.gender,
    required this.experience,
    required this.isMarried,
    required this.updatedAt,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return switch (json['employee']) {
      {
        'id': int id,
        'first_name': String firstName,
        'last_name': String lastName,
        'phone': String phone,
        'birth_date': String birthDate,
        'salary': num salary,
        'department': String department,
        'created_at': String createdAt,
        'email': String email,
        'address': String address,
        'gender': String gender,
        'experience': int experience,
        'is_married': bool isMarried,
        'updated_at': String updatedAt,
      } =>
        Employee(
          id: id,
          firstName: firstName,
          lastName: lastName,
          phone: phone,
          birthDate: DateTime.parse(birthDate),
          salary: salary.toDouble(),
          department: department,
          createdAt: DateTime.parse(createdAt),
          email: email,
          address: address,
          gender: gender,
          experience: experience,
          isMarried: isMarried,
          updatedAt: DateTime.parse(updatedAt),
        ),
      _ => throw const FormatException('Failed to load employee.'),
    };
  }
}
