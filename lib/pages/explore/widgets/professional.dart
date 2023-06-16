// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../../data/explore_list.dart';
import 'common_widgets/searchbar.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Professional extends StatefulWidget {
  const Professional({super.key});

  @override
  State<Professional> createState() => _ProfessionalState();
}

class _ProfessionalState extends State<Professional> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 8,
                      child: searchBar(),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.filter_alt_outlined,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              // This is the list of Cards for PROFESSIONAL Catagory Persons
              Container(
                  height: 588,
                  child: ListView.builder(
                    itemCount: ExploreListItems.professionalitemsList.length,
                    itemBuilder: (context, index) {
                      if (ExploreListItems.professionalitemsList[index]
                              ['catagory'] ==
                          'PROFESSIONAL') {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          child: Container(
                            // color: Colors.black,
                            width: 350,
                            height: 200,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 2,
                                          offset: const Offset(1, 0),
                                        ),
                                      ],
                                      // border: Border.all(width: 1),
                                      borderRadius: BorderRadius.circular(32),
                                    ),
                                    width: 315,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          // color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(32)),
                                      width: double.infinity,
                                      height: 110,
                                      child: Column(
                                        children: [
                                          const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 18),
                                                child: Text(
                                                  '+ INVITE',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    alignment: Alignment.center,
                                                    height: 85,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18),
                                                    ),
                                                    child: Image.network(
                                                      ExploreListItems
                                                              .professionalitemsList[
                                                          index]['image'],
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      ExploreListItems
                                                              .professionalitemsList[
                                                          index]['name'],
                                                      style: const TextStyle(
                                                          color:
                                                              Color(0xff234a64),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      ExploreListItems
                                                              .professionalitemsList[
                                                          index]['location'],
                                                      style: const TextStyle(
                                                        color:
                                                            Color(0xff214863),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 8),
                                                      child:
                                                          LinearPercentIndicator(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 0),
                                                        barRadius: const Radius
                                                            .circular(8),
                                                        width: 130.0,
                                                        lineHeight: 12.0,
                                                        percent: ExploreListItems
                                                                .professionalitemsList[
                                                            index]['barPercentage'],
                                                        backgroundColor:
                                                            Colors.grey,
                                                        progressColor:
                                                            const Color
                                                                    .fromARGB(
                                                                255, 6, 46, 51),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          // color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(32)),
                                      height: 90,
                                      width: 300,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 2, horizontal: 5),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    ExploreListItems
                                                            .professionalitemsList[
                                                        index]['about'],
                                                    softWrap: true,
                                                    maxLines: 2,
                                                    style: const TextStyle(
                                                        color:
                                                            Color(0xff214863),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 5),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    ExploreListItems
                                                            .professionalitemsList[
                                                        index]['description'],
                                                    style: const TextStyle(
                                                      color: Color(0xff214863),
                                                    ),
                                                    softWrap: true,
                                                    maxLines: 6,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      } else {
                        return null;
                      }
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
