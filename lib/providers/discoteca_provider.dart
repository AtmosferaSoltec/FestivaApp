import 'package:festiva_flutter/domain/model/discoteca.dart';
import 'package:festiva_flutter/domain/usecase/get_all_discotecas_usecase.dart';
import 'package:flutter/material.dart';

class DiscotecaProvider with ChangeNotifier {
  final GetAllDiscotecasUsecase getAllDiscotecasUsecase;

  DiscotecaProvider(this.getAllDiscotecasUsecase);

  bool isLoading = false;

  List<Discoteca> _products = [];

  List<Discoteca> get products => _products;

  Future<void> fetchProducts() async {
    _products = await getAllDiscotecasUsecase.call();
    notifyListeners();
  }
}
