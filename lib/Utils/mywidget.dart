// ignore_for_file: non_constant_identifier_names

import 'package:festival_post/Screens/detail.dart';
import 'package:flutter/material.dart';
import '../Utils/data.dart';

Widget Posts({required String category}) {
  return Builder(builder: (context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Expanded(
                  child: Text(
                    data[index]["category"],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...data.map(
                      (e) => (e['category'] == category)
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Detail(
                                            category: data[index]["category"],
                                          )));
                                },
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: NetworkImage(e["image"]),
                                          fit: BoxFit.cover),
                                      color: Colors.blue),
                                ),
                              ),
                            )
                          : Container(),
                    ),
                  ],
                ),
              )
            ],
          );
        });
  });
}
