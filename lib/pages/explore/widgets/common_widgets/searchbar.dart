import 'package:flutter/material.dart';

Padding searchBar() {
  return Padding(
    padding: const EdgeInsets.only(left: 25),
    child: SearchBar(
      hintStyle: MaterialStateProperty.all(
        const TextStyle(color: Colors.grey),
      ),
      leading: const Icon(
        Icons.search_outlined,
        color: Colors.grey,
      ),
      constraints: const BoxConstraints(maxHeight: 35),
      hintText: 'Search',
    ),
  );
}
