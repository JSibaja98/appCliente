import 'package:flutter/material.dart';

class FavoriteListPage extends StatefulWidget {
  FavoriteListPage({Key key}) : super(key: key);

  @override
  _FavoriteListPageState createState() => _FavoriteListPageState();
}

class _FavoriteListPageState extends State<FavoriteListPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Favorite List')),
    );
  }
}
