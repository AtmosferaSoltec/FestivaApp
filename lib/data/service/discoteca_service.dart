import 'dart:convert';

import 'package:festiva_flutter/config/constants.dart';
import 'package:festiva_flutter/data/dto/discoteca_dto.dart';
import 'package:festiva_flutter/data/dto/wrapper.dart';
import 'package:http/http.dart' as http;

class DiscotecaService {
  Uri urlDiscoteca = Uri.parse('${AppConstants.baseUrl}/discoteca');

  Future<List<DiscotecaDto>> getAll() async {
    try {
      final response = await http.get(urlDiscoteca);
      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        final wrapper = Wrapper<List<DiscotecaDto>>.fromJson(
          jsonResponse,
          (dataJson) {
            if (dataJson is List) {
              return (dataJson)
                  .map((json) =>
                      DiscotecaDto.fromJson(json as Map<String, dynamic>))
                  .toList();
            } else {
              return [];
            }
          },
        );

        if (wrapper.isSuccess) {
          print("Discotecas cargadas");
          return wrapper.data ?? [];
        } else {
          throw Exception(wrapper.message);
        }
      } else {
        throw Exception('Failed to load discotecas');
      }
    } catch (e) {
      throw Exception('Error al cargar las discotecas');
    }
  }
}
