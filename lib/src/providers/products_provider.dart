import 'package:http/http.dart' as http;
import 'dart:convert';
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
  Future <List<ProductsModel>> getProducts() async {

    // final url = new Uri.http(_url, "/productos");
    // final url = Uri.https(_url, '3/movie/popular', {
    //   'api_key': _apiKey,
    //   'language': _language,
    // });
    // final resp = await http.get(url);
    final resp = await new Dio().get('http://192.168.43.57:5000/lihat-isi');
    final Map<String, dynamic> decodedData = json.decode(resp.data);
    final List<ProductsModel> products = new List();

    // if (decodedData == null) {
    //   return [];
    // } else {
    //   decodedData.forEach((id, item) {
    //     print(item);
    //     final prodTemp = ProductsModel.fromJson(item);
    //     products.add(prodTemp);
    //   });
    // }

    // print(products);

    return resp.data;
  }
}
