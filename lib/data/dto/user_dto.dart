import '../../domain/model/user.dart';

class UserDto {
  final int? id;
  final String? name;
  final String? email;

  UserDto({required this.id, required this.name, required this.email});

  factory UserDto.fromJson(Map<String, dynamic> json) {
    return UserDto(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
    );
  }

  User toDomain() {
    return User(
      id: id ?? 0,  // Proporciona un valor predeterminado si id es nulo
      name: name ?? 'No name',  // Proporciona un valor predeterminado si name es nulo
      email: email ?? 'No email',  // Proporciona un valor predeterminado si email es nulo
    );
  }
}