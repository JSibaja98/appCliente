import 'dart:async';
import 'package:proyectorestclient/src/models/product_model.dart';
import 'package:dio/dio.dart';

class ProductsProvider {
  String _url = "192.168.1.8/api_flutter/api";

/**************************************************************************************
 * Author: Esalas
 * date: 16/08/2020
 * Description: Method that get movies casting data
 * Name: getPopularMovies
 * Powerd by: getCasting
 * ************************************************************************************/
  Future<List<ProductsModel>> getProducts() async {
    try {
      final resp = await new Dio().get('http://192.168.1.8/api_flutter/api/productos');
      // if there is a key before array, use this : return (response.data['data'] as List).map((child)=> Children.fromJson(child)).toList();
      return (resp.data as List)
          .map((x) => ProductsModel.fromJson(x))
          .toList();
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
  }
}