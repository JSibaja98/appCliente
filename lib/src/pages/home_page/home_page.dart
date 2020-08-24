import 'package:flutter/material.dart';
import 'package:proyectorestclient/src/pages/books_store_page/books_store_page.dart';
import 'package:proyectorestclient/src/pages/favorite_list/favorite_list_page.dart';
import 'package:proyectorestclient/src/pages/search/search_delegate.dart';
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
        title: Text('Bookland'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          ),
        ],
      ),
      body: _callPage(_actualPage),
      bottomNavigationBar: _createBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
        child: Icon(Icons.tune),
      ),
    );
  }

  Widget _createBottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.collections_bookmark),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          title: Container(),
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
        return BooksStorePage();
        break;
      case 1:
        return FavoriteListPage();
        break;
      case 2:
        return ShoppingCartPage();
        break;
      default:
        return BooksStorePage();
    }
  }
}
