//This is the Main List for Explore Page [ for 3 Sections (INDIVIDUAL, PROFESSIONAL, MERCHANT) ]

import 'package:flutter/material.dart';

class ExploreListItems {
  static List<Map<String, dynamic>> individualitemsList = [
    {
      'catagory': 'INDIVIDUAL',
      'image':
          'https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-1.webp',
      'name': 'Vikas Kumar',
      'location': 'San Francisco, within 2 Km',
      'barPercentage': 0.02,
      'icons': [Icons.call, Icons.person_add_alt_1, Icons.fmd_good_outlined],
      'about': 'Friendship | Coffee | Hangout',
      'description': 'Hi community! I am open to new connections.',
    },
    {
      'catagory': 'INDIVIDUAL',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6vEkfd2uNbJbYgjpQ6VpkNvjQ4Lk4oU6hKq-nVsLOUNgg4L2qN8TNRfeWU0IFQEIbMSI&usqp=CAU',
      'name': 'Rahul Sharma',
      'location': 'San Francisco, within 5 Km',
      'barPercentage': 0.05,
      'icons': [Icons.call, Icons.person_add_alt_1, Icons.fmd_good_outlined],
      'about': 'Friendship | Coffee | Hangout',
      'description': 'Hi community! I am open to new connections.',
    },
    {
      'catagory': 'INDIVIDUAL',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVTdJomwCX5YrQ9A_uLnhk87vJiEA6rfRPL5ozH4OtGZE0Kb5AwbhdsrNX0KsEn-AyBxA&usqp=CAU',
      'name': 'Shubham Singh',
      'location': 'San Francisco, within 8 Km',
      'barPercentage': 0.08,
      'icons': [Icons.call, Icons.person_add_alt_1, Icons.fmd_good_outlined],
      'about': 'Friendship | Coffee | Hangout',
      'description': 'Hi community! I am open to new connections.',
    },
    {
      'catagory': 'INDIVIDUAL',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNCBWq-ooJMctuPFZ_rSqfQBLyazZuOOvGSTQgpPBmjmrAwJXRXIl1slGQvtR3p_Q7rS4&usqp=CAU',
      'name': 'Surya Singh',
      'location': 'San Francisco, within 12 Km',
      'barPercentage': 0.12,
      'icons': [Icons.call, Icons.person_add_alt_1, Icons.fmd_good_outlined],
      'about': 'Friendship | Coffee | Hangout',
      'description': 'Hi community! I am open to new connections.',
    },
  ];

  //professional list

  static List<Map<String, dynamic>> professionalitemsList = [
    {
      'catagory': 'PROFESSIONAL',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbsB8JQHddPH1KvZYLJAUfjFJ5FTr9jd0wsn2mB968OxOaNP_IZSUEP_yo_Aii4GvQ9Zg&usqp=CAU',
      'name': 'Rohan Shukla',
      'location': 'San Francisco, within 22 Km',
      'barPercentage': 0.22,
      'icons': [Icons.call, Icons.person_add_alt_1, Icons.fmd_good_outlined],
      'about': 'Consultant | 2 years of experience',
      'description': 'Hi community! I am available at your service!.',
    },
  ];

  //merchant list

  static List<Map<String, dynamic>> merchantitemsList = [
    {
      'catagory': 'MERCHANT',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb-Qd90g2rFTZLMOec7p4qeSTMyGegWW4snA&usqp=CAU',
      'name': 'Shubman Gill',
      'location': 'San Francisco, within 6 Km',
      'barPercentage': 0.06,
      'icons': [Icons.call, Icons.person_add_alt_1, Icons.fmd_good_outlined],
      'about': 'Safe & Fast Car Rental - Taxi Servies in San Francisco',
      'description':
          'Hi community! We have great deals for you. Check us out!.',
    },
  ];
}
