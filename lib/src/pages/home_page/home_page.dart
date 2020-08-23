import 'package:flutter/material.dart';
import 'package:proyectorestclient/src/pages/books_store_page/books_store_page.dart';
import 'package:proyectorestclient/src/pages/favorite_list/favorite_list_page.dart';
import 'package:proyectorestclient/src/pages/shopping_cart/shopping_cart_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _actualPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Soda la suculenta'),
      ),
      body: _callPage(_actualPage),
      bottomNavigationBar: _createBottomNavigationBar(),
      // floatingActionButton: ,
    );
  }

  Widget _createBottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.collections_bookmark),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          title: Text(''),
        ),
      ],
      currentIndex: _actualPage,
      onTap: (index) {
        setState(() {
          _actualPage = index;
        });
      },
    );
  }

  Widget _callPage(int actualPage) {
    switch (actualPage) {
      case 0:
        return FavoriteListPage();
        break;
      case 1:
        return BooksStorePage();
        break;
      case 2:
        return ShoppingCartPage();
        break;
      default:
        return BooksStorePage();
    }
  }
}
