import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Soda la suculenta'),
      ),
      body: Center(
        child: Text('test!'),
      ),
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
    );
  }
}
