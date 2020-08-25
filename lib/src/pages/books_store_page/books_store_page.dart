import 'package:flutter/material.dart';
import 'package:proyectorestclient/src/models/product_model.dart';
import 'package:proyectorestclient/src/providers/products_provider.dart';

class BooksStorePage extends StatelessWidget {
  final productsProvider = new ProductsProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _createBackground(context),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: <Widget>[
                _createBookCards(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _createBackground(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height) * 0.28,
      width: (MediaQuery.of(context).size.width),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromRGBO(49, 71, 85, 1.0),
          Color.fromRGBO(38, 160, 218, 1.0)
        ]),
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(250.0)),
      ),
    );
  }

  Widget _createBookCards() {
    // return Table(
    //   children: [
    //     TableRow(
    //       children: [
    //         _createCard(),
    //         _createCard(),
    //       ],
    //     ),
    //     TableRow(
    //       children: [
    //         _createCard(),
    //         _createCard(),
    //       ],
    //     ),
    //     TableRow(
    //       children: [
    //          _createCard(),
    //         _createCard(),
    //       ],
    //     ),
    //     TableRow(
    //       children: [
    //         _createCard(),
    //         _createCard(),
    //       ],
    //     ),
    //   ],
    // );
    // productsProvider.getProducts();
    return FutureBuilder(
      future: productsProvider.getProducts(),
      builder:
          (BuildContext context, AsyncSnapshot<List<ProductsModel>> snapshot) {
        if (snapshot.hasData) {
          return Container();
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }

  Widget _createCard() {
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/img/loading.gif'),
            image: NetworkImage(
                'https://www.nationalgeographic.com/content/dam/travel/rights-exempt/2019-travel-photo-contest/epic-landscapes/2019-travel-photo-contest-epic-landscapes031.jpg'),
            fadeInDuration: Duration(milliseconds: 300),
            height: 200.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('this is an image'),
          ),
        ],
      ),
    );

    return Container(
      width: 180.0,
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(3.0, 4.0))
        ],
      ),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
