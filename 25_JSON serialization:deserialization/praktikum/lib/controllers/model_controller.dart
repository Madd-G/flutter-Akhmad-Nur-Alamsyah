import 'package:dio/dio.dart' as d;
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'dart:convert';

class ModelController extends GetxController {
  d.Dio dio = d.Dio();
  var hasil = {}.obs;

  Future fetchUsers() async {
    try {
      final d.Response response = await dio.get('https://reqres.in/api/users');
      hasil.value = response.data;
      debugPrint(response.data.toString());
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future createUser({
    required String name,
    required String job,
  }) async {
    try {
      final d.Response response = await dio.post(
        'https://reqres.in/api/users',
        data: {
          'name': name,
          'job': job,
        },
      );
      debugPrint(response.data.toString());
      hasil.value = response.data;
      final UserModel userModel = UserModel.fromJson(response.data);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future updateUser({required String name, required String job}) async {
    try {
      final d.Response response = await dio.put(
        'https://reqres.in/api/users/4',
        data: {
          'name': name,
          'job': job,
        },
      );
      hasil.value = response.data;
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future deleteUser() async {
    try {
      final d.Response response =
          await dio.delete('https://reqres.in/api/users/4');

      debugPrint(response.data.toString());
      hasil.value = response.data;
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}

class UserModel {
  String? name;
  String? job;

  UserModel({this.name, this.job});

  factory UserModel.fromJson(Map<String, dynamic> responseData) {
    return UserModel(
      name: responseData['name'],
      job: responseData['job'],
    );
  }
}
