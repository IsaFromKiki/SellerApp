import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart' as Dio;
import 'package:flutter/material.dart';
import 'package:seller_app/presentation/models/user.dart';

import 'dio.dart';

class Auth extends ChangeNotifier {
  bool _authenticated = false;
  User? _user;

  bool get authenticated => _authenticated;

  User? get user => _user;

  Future login({required Map credentials}) async {
    //_authenticated = true;
    Dio.Response response =
        await dio().post('/auth/token', data: json.encode(credentials));
    String token = json.decode(response.toString())['token'];
    await attempt(token);
    //notifyListeners();
  }

  Future attempt(String token) async {
    try {
      Dio.Response response = await dio().get(
        '/auth/user',
        options: Dio.Options(headers: {'Authorization': 'Bearer $token'}),
      );
      log(response.toString());
      _user = User.fromJson(json.decode(response.toString()));
      _authenticated = true;
    } catch (e) {
      //
    }
    notifyListeners();
  }

  void logout() {
    _authenticated = false;
    notifyListeners();
  }
}
