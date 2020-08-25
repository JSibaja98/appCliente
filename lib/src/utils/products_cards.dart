import 'package:flutter/material.dart';

// imports for installed dependencies
import 'package:proyectorestclient/src/models/product_model.dart';

class ProductsCards extends StatelessWidget {
  final List<ProductsModel> products;

  ProductsCards({@required this.products});

  final _pageController = new PageController(
    initialPage: 1,
    viewportFraction: 0.3,
  );

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      height: _screenSize.height,
      padding: EdgeInsets.only(top: 10.0),
      child: PageView.builder(
        pageSnapping: false,
        controller: _pageController,
        scrollDirection: Axis.vertical,
        itemCount: products.length,
        itemBuilder: (context, i) {
          return _cardList(context, products);
        },
      ),
    );
  }

  Widget _cardList(BuildContext context, List<ProductsModel> product) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: product.length,
        itemBuilder: (context, index) {
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
        });
  }

  Widget _card(BuildContext context, ProductsModel product) {
    return Container(
      margin: EdgeInsets.only(right: 15.0),
      child: Column(
        children: <Widget>[
          // Hero(
          // tag: product.pkProducto,

          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: FadeInImage(
                placeholder: AssetImage('assets/img/no-image.jpg'),
                image: NetworkImage(product.imagenProducto),
                fit: BoxFit.cover,
                height: 120.0),
          ),
          // ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            product.nombreProducto,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );

    // return GestureDetector(
    //   child: card,
    //   onTap: () {
    //     // final route = 'movie_detail';
    //     Navigator.pushNamed(context, route, arguments: product);
    //   },
    // );
  }
}

// List<Widget> _cards(BuildContext context) {
//   return movies.map((movie) {
//     return Container(
//       margin: EdgeInsets.only(right: 15.0),
//       child: Column(
//         children: <Widget>[
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10.0),
//             child: FadeInImage(
//                 placeholder: AssetImage('assets/img/no-image.jpg'),
//                 image: NetworkImage(movie.getPosterImg()),
//                 fit: BoxFit.cover,
//                 height: 120.0),
//           ),
//           SizedBox(
//             height: 10.0,
//           ),
//           Text(
//             movie.title,
//             overflow: TextOverflow.ellipsis,
//             style: Theme.of(context).textTheme.caption,
//           ),
//         ],
//       ),
//     );
//   }).toList();
// }
