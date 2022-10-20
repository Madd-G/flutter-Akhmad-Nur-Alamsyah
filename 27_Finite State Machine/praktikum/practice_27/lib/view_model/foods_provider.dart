import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../../model/food.dart';

class FoodProvider extends ChangeNotifier {
  static String url =
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods';

  Dio dio = Dio();

  List<Food> foodList = [];

  Future<List<Food>> fetchData() async {
    try {
      final Response response = await dio.get(url);
      final users =
          (response.data as List).map((user) => Food.fromJson(user)).toList();

      final foodList = users;

      this.foodList = foodList;

      notifyListeners();

      return foodList;
    } on DioError catch (_) {
      rethrow;
    }
  }
}
