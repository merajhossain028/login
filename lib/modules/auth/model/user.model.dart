class User {
  final String name;
  final String userName;
  final String email;
  String password;
  String? profession;

  User({
    required this.name,
    required this.userName,
    required this.email,
    required this.password,
    this.profession,
  });

  //copywith
  User copywith({
    String? name,
    String? userName,
    String? email,
    String? password,
    String? profession,
  }) {
    return User(
      name: name ?? this.name,
      userName: userName ?? this.userName,
      email: email ?? this.email,
      password: password ?? this.password,
      profession: profession ?? this.profession,
    );
  }

  //from json
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      userName: json['userName'],
      email: json['email'],
      password: json['password'],
      profession: json['profession'],
    );
  }

  //to json
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'userName': userName,
      'email': email,
      'password': password,
      'profession': profession,
    };
  }

  //to string
  @override
  String toString() {
    return 'User(name: $name, userName: $userName, email: $email, password: $password, profession: $profession)';
  }
}
