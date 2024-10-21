import 'package:festiva_flutter/domain/model/categoria.dart';

class CategoriaDto {
  final int? id;
  final String? nombre;

  CategoriaDto({required this.id, required this.nombre});

  factory CategoriaDto.fromJson(Map<String, dynamic> json) {
    return CategoriaDto(
      id: json['id'] as int?,
      nombre: json['nombre'] as String?,
    );
  }

  Categoria toDomain() {
    return Categoria(
      id: id ?? 0,
      nombre: nombre ?? "",
    );
  }
}
