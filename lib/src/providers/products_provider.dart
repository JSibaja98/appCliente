import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:proyectorestclient/src/models/product_model.dart';

class ProductsProvider {

  //   String _apiKey = 'aaeb1f745a530717c0dafd9b9b699bf6';
  // String _url = 'api.themoviedb.org';
    String _url = 'localhost:5000';

  // String _language = 'en-Us';

/**************************************************************************************
 * Author: Esalas
 * date: 16/08/2020
 * Description: Method that get movies casting data
 * Name: getPopularMovies
 * Powerd by: getCasting
 * ************************************************************************************/
  Future<String> getProducts() async {

    final url = new Uri.http(_url, "/productos");
    // final url = Uri.https(_url, '3/movie/popular', {
    //   'api_key': _apiKey,
    //   'language': _language,
    // });
    final resp = await http.get(url);
    final Map<String, dynamic> decodedData = json.decode(resp.body);
    final List<ProductsModel> products = new List();

    if (decodedData == null) {
      return '';
    } else {
      decodedData.forEach((id, item) {
        print(item);
        final prodTemp = ProductsModel.fromJson(item);
        products.add(prodTemp);
      });
    }

    // print(products);

    return '';
  }
}
