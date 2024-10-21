import 'package:festiva_flutter/config/constants.dart';
import 'package:festiva_flutter/data/dto/categoria_dto.dart';
import 'package:festiva_flutter/data/dto/user_dto.dart';
import 'package:festiva_flutter/data/dto/wrapper.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  Future<List<UserDto>> getAll() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      List<UserDto> users = data.map((json) => UserDto.fromJson(json)).toList();
      return users;
    } else {
      throw Exception('Failed to load user');
    }
  }

  Future<List<CategoriaDto>> getAllCategorias() async {
    final response =
        await http.get(Uri.parse('${AppConstants.baseUrl}/cat-evento'));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      final wrapper = Wrapper<List<CategoriaDto>>.fromJson(
        jsonResponse,
        (dataJson) {
          if (dataJson is List) {
            return (dataJson)
                .map((json) =>
                    CategoriaDto.fromJson(json as Map<String, dynamic>))
                .toList();
          } else {
            return [];
          }
        },
      );

      if (wrapper.isSuccess) {
        return wrapper.data ?? [];
      } else {
        throw Exception(wrapper.message);
      }
    } else {
      throw Exception('Failed to load categorias');
    }
  }
}
