import 'package:festiva_flutter/domain/model/categoria.dart';
import 'package:festiva_flutter/domain/repository/repository.dart';
import 'package:flutter/material.dart';

class CategoriaProvider with ChangeNotifier {
  final CategoriaRepository repository;

  CategoriaProvider(this.repository);

  List<Categoria> list = [];
  bool isLoading = false;

  Future<void> getAll() async {
    isLoading = true;
    notifyListeners();
    delay(2000);
    list = await repository.getAll();
    isLoading = false;
    notifyListeners();
  }

  void delay(int i) async {
    await Future.delayed(Duration(milliseconds: i));
  }
}
