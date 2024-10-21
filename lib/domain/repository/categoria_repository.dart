import 'package:festiva_flutter/domain/model/categoria.dart';

abstract class CategoriaRepository {
  Future<List<Categoria>> getAll();
}