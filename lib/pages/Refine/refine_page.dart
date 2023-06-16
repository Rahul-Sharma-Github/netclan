// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/widgets/appbar.dart';

class RefinePage extends StatefulWidget {
  const RefinePage({super.key});

  @override
  State<RefinePage> createState() => _RefinePageState();
}

class _RefinePageState extends State<RefinePage> {
  // initial value of DropDownButton
  // it will change accoring to user selection
  String currentValue = 'Available | Hey Let Us Connect';

  // List of items for DropDownMenuItems of DropDownButton
  var items = [
    'Available | Hey Let Us Connect',
    'Away | Stay Discreet And Watch',
    'Busy | Do Not Disturb | Will Catch Up Later',
    'SOS | Emergency | Need Assistance! HELP'
  ];

// this will change it's value and show total no. of typed character
// while typing in Input TextField
  int totalCharacter = 0;

// initial value of Slider
  double currentSliderValue = 1.0;

// Variables for handling Chip Button Selection & DisSelection
// total 7 chip buttons
  bool ischip1Selected = false;
  Color chip1selectedColor = Colors.black;

  bool ischip2Selected = false;
  Color chip2selectedColor = Colors.black;

  bool ischip3Selected = false;
  Color chip3selectedColor = Colors.black;

  bool ischip4Selected = false;
  Color chip4selectedColor = Colors.black;

  bool ischip5Selected = false;
  Color chip5selectedColor = Colors.black;

  bool ischip6Selected = false;
  Color chip6selectedColor = Colors.black;

  bool ischip7Selected = false;
  Color chip7selectedColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain('Refine', 'Seattle, Washington'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Select Your Availability',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color.fromARGB(255, 6, 46, 51)),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: DropdownButton(
                  underline: const SizedBox(),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  value: currentValue,
                  isExpanded: true,
                  // Storing each item in DropDownMenuItem Widget
                  items: items.map(
                    (e) {
                      return DropdownMenuItem(
                        value: e,
                        child: Text(e,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal)),
                      );
                    },
                  ).toList(),
                  onChanged: (value) {
                    setState(() {
                      currentValue = value!;
                    });
                  },
                ),
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Add Your Status',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color.fromARGB(255, 6, 46, 51)),
                    ),
                  ),
                ],
              ),
              // Multi Line TextField for storing user's Status
              Container(
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: const InputDecoration(border: InputBorder.none),
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 6,
                    onChanged: (value) {
                      setState(() {
                        totalCharacter = value.length;
                      });
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('$totalCharacter/250'),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Select Hyper local Distance',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color.fromARGB(255, 6, 46, 51)),
                    ),
                  ),
                ],
              ),
              // A Slider for Selecting Distance [ 1km to 100km Range ]
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Slider(
                    label: currentSliderValue.round().toString(),
                    min: 1,
                    max: 100,
                    divisions: 100,
                    value: currentSliderValue,
                    onChanged: (value) {
                      setState(() {
                        currentSliderValue = value;
                      });
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('1 Km'),
                    Text('100 Km'),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Select Purpose',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color.fromARGB(255, 6, 46, 51)),
                    ),
                  ),
                ],
              ),
              // All the Chip Buttons [ for selecting Purpose ]
              // users can select them and unselect them according to thier need
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: InputChip(
                            checkmarkColor: Colors.white,
                            selected: ischip1Selected,
                            onSelected: (value) {
                              setState(() {
                                ischip1Selected = value;
                                if (chip1selectedColor == Colors.black) {
                                  chip1selectedColor = Colors.white;
                                } else {
                                  chip1selectedColor = Colors.black;
                                }
                              });
                            },
                            selectedColor: const Color.fromARGB(255, 6, 46, 51),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            labelStyle: const TextStyle(),
                            label: Text(
                              'Coffee',
                              style: TextStyle(color: chip1selectedColor),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InputChip(
                            checkmarkColor: Colors.white,
                            selected: ischip2Selected,
                            onSelected: (value) {
                              setState(() {
                                ischip2Selected = value;
                                if (chip2selectedColor == Colors.black) {
                                  chip2selectedColor = Colors.white;
                                } else {
                                  chip2selectedColor = Colors.black;
                                }
                              });
                            },
                            selectedColor: const Color.fromARGB(255, 6, 46, 51),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            labelStyle: const TextStyle(),
                            label: Text(
                              'Business',
                              style: TextStyle(color: chip2selectedColor),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InputChip(
                            checkmarkColor: Colors.white,
                            selected: ischip3Selected,
                            onSelected: (value) {
                              setState(() {
                                ischip3Selected = value;
                                if (chip3selectedColor == Colors.black) {
                                  chip3selectedColor = Colors.white;
                                } else {
                                  chip3selectedColor = Colors.black;
                                }
                              });
                            },
                            selectedColor: const Color.fromARGB(255, 6, 46, 51),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            labelStyle: const TextStyle(),
                            label: Text(
                              'Hobbies',
                              style: TextStyle(color: chip3selectedColor),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InputChip(
                            checkmarkColor: Colors.white,
                            selected: ischip4Selected,
                            onSelected: (value) {
                              setState(() {
                                ischip4Selected = value;
                                if (chip4selectedColor == Colors.black) {
                                  chip4selectedColor = Colors.white;
                                } else {
                                  chip4selectedColor = Colors.black;
                                }
                              });
                            },
                            selectedColor: const Color.fromARGB(255, 6, 46, 51),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            labelStyle: const TextStyle(),
                            label: Text(
                              'Frienship',
                              style: TextStyle(color: chip4selectedColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: InputChip(
                            checkmarkColor: Colors.white,
                            selected: ischip5Selected,
                            onSelected: (value) {
                              setState(() {
                                ischip5Selected = value;
                                if (chip5selectedColor == Colors.black) {
                                  chip5selectedColor = Colors.white;
                                } else {
                                  chip5selectedColor = Colors.black;
                                }
                              });
                            },
                            selectedColor: const Color.fromARGB(255, 6, 46, 51),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            labelStyle: const TextStyle(),
                            label: Text(
                              'Movies',
                              style: TextStyle(color: chip5selectedColor),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InputChip(
                            checkmarkColor: Colors.white,
                            selected: ischip6Selected,
                            onSelected: (value) {
                              setState(() {
                                ischip6Selected = value;
                                if (chip6selectedColor == Colors.black) {
                                  chip6selectedColor = Colors.white;
                                } else {
                                  chip6selectedColor = Colors.black;
                                }
                              });
                            },
                            selectedColor: const Color.fromARGB(255, 6, 46, 51),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            labelStyle: const TextStyle(),
                            label: Text(
                              'Dinning',
                              style: TextStyle(color: chip6selectedColor),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InputChip(
                            checkmarkColor: Colors.white,
                            selected: ischip7Selected,
                            onSelected: (value) {
                              setState(() {
                                ischip7Selected = value;
                                if (chip7selectedColor == Colors.black) {
                                  chip7selectedColor = Colors.white;
                                } else {
                                  chip7selectedColor = Colors.black;
                                }
                              });
                            },
                            selectedColor: const Color.fromARGB(255, 6, 46, 51),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            labelStyle: const TextStyle(),
                            label: Text(
                              'Dating',
                              style: TextStyle(color: chip7selectedColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              // Save Button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => const Color.fromARGB(255, 6, 46, 51)),
                      ),
                      onPressed: () {
                        Get.snackbar(
                            overlayBlur: 1,
                            colorText: Colors.white,
                            backgroundColor:
                                const Color.fromARGB(255, 6, 46, 51),
                            snackPosition: SnackPosition.BOTTOM,
                            'Explore Now !',
                            'Your Refinement Settings are Saved .');
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        child: Text(
                          'Save & Explore',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
