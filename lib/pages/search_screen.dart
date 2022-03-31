import 'package:flutter/material.dart';
import 'package:equal/context_extension.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final _searchedItem = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(249, 249, 255, 1),
      body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: context.dynamicWidth(0.05),
              vertical: context.dynamicHeight(0.05)),
          child: Column(
            children: [
              TextField(
                controller: _searchedItem,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Search",
                  prefixIcon: const Icon(Icons.search,
                      color: Color.fromRGBO(212, 212, 212, 1)),
                  suffixIcon: InkWell(
                    onTap: _searchedItem.clear,
                    child: Icon(Icons.clear),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
