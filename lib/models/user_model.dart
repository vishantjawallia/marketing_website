class UserModel {
  final String? email;
  final String? password;
  final String? name;
  final String? avatar;
  final String? role;
  final int? id;
  final String? creationAt;
  final String? updatedAt;
  const UserModel({this.email, this.password, this.name, this.avatar, this.role, this.id, this.creationAt, this.updatedAt});
  UserModel copyWith({String? email, String? password, String? name, String? avatar, String? role, int? id, String? creationAt, String? updatedAt}) {
    return UserModel(
        email: email ?? this.email,
        password: password ?? this.password,
        name: name ?? this.name,
        avatar: avatar ?? this.avatar,
        role: role ?? this.role,
        id: id ?? this.id,
        creationAt: creationAt ?? this.creationAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }

  Map<String, Object?> toJson() {
    return {'email': email, 'password': password, 'name': name, 'avatar': avatar, 'role': role, 'id': id, 'creationAt': creationAt, 'updatedAt': updatedAt};
  }

  static UserModel fromJson(Map<String, Object?> json) {
    return UserModel(
        email: json['email'] == null ? null : json['email'] as String,
        password: json['password'] == null ? null : json['password'] as String,
        name: json['name'] == null ? null : json['name'] as String,
        avatar: json['avatar'] == null ? null : json['avatar'] as String,
        role: json['role'] == null ? null : json['role'] as String,
        id: json['id'] == null ? null : json['id'] as int,
        creationAt: json['creationAt'] == null ? null : json['creationAt'] as String,
        updatedAt: json['updatedAt'] == null ? null : json['updatedAt'] as String);
  }

  @override
  String toString() {
    return '''UserModel(
                email:$email,
password:$password,
name:$name,
avatar:$avatar,
role:$role,
id:$id,
creationAt:$creationAt,
updatedAt:$updatedAt
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is UserModel &&
        other.runtimeType == runtimeType &&
        other.email == email &&
        other.password == password &&
        other.name == name &&
        other.avatar == avatar &&
        other.role == role &&
        other.id == id &&
        other.creationAt == creationAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, email, password, name, avatar, role, id, creationAt, updatedAt);
  }
}
