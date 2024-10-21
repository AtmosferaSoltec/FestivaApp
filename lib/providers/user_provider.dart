import 'package:festiva_flutter/domain/usecase/get_all_users_usecase.dart';
import 'package:flutter/material.dart';
import '../domain/model/user.dart';

class UserProvider with ChangeNotifier {
  final GetAllUsersUsecase getAllUsersUsecase;
  List<User> list = [];
  bool isLoading = false;

  UserProvider(this.getAllUsersUsecase);

  Future<void> getAll() async {
    isLoading = true;
    notifyListeners();
    list = await getAllUsersUsecase.call();
    for (var user in list) {
      print('Name: ${user.name}, Email: ${user.email}');
    }

    isLoading = false;
    notifyListeners();
  }
}