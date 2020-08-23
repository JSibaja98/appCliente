import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    // Actions for appBar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          color: Colors.blueGrey,
          onPressed: () {
            query = '';
          }),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Left icon of appBar
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
          color: Colors.blueGrey,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // Instruction that creates the results to show
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Suggestions when user is typing
    if (query.isEmpty) {
      return Container();
    }
  }
}
