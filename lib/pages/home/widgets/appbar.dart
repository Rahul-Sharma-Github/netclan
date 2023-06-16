import 'package:flutter/material.dart';

PreferredSizeWidget appBarMain(String title, String subtitle) {
  return AppBar(
    toolbarHeight: 60,
    backgroundColor: const Color.fromARGB(255, 6, 46, 51),
    leadingWidth: 60,
    leading: const Icon(
      Icons.menu_sharp,
      color: Colors.white,
      size: 40,
    ),
    title: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 3),
                child: Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 14, color: Colors.white),
              ),
            ],
          )
        ],
      ),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        child: Icon(
          Icons.notifications_none_outlined,
          color: Colors.white,
          size: 35,
        ),
      ),
    ],
  );
}
