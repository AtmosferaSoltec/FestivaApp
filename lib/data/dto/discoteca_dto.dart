import 'package:festiva_flutter/domain/model/discoteca.dart';

class DiscotecaDto {
  final int? id;
  final String? nombre;
  final String? logo;
  final String? portada;

  DiscotecaDto(
      {required this.id,
      required this.nombre,
      required this.logo,
      required this.portada});

  factory DiscotecaDto.fromJson(Map<String, dynamic> json) {
    return DiscotecaDto(
      id: json['id'] as int?,
      nombre: json['nombre'] as String?,
      logo: json['url_logo'] as String?,
      portada: json['url_portada'] as String?,
    );
  }

  Discoteca toDomain() {
    return Discoteca(
      id: id ?? 0,
      nombre: nombre ?? "",
      logo: logo ?? "",
      portada: portada ?? "",
    );
  }
}
