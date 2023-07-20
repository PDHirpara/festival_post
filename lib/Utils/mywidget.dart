// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import '../Utils/data.dart';

Widget Posts({required String category}) {
  return Builder(builder: (context) {
    // print("hellooooooooooooooooo" + data[0]["image"]);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...data
            .map(
              (e) => (e['category'] == category)
                  ? SingleChildScrollView(
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount:
                              (e['category'] == category) ? data.length : 0,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 200,
                                    width: 200,
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: data.length,
                                        itemBuilder: (context, index) {
                                          return Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                e["category"],
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 20,
                                                height: 20,
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                height: 100,
                                                width: 100,
                                                decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      // e[index]['image'],
                                                      e["image"],
                                                    ),
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 20,
                                                height: 20,
                                              ),
                                            ],
                                          );
                                        }),
                                  ),
                                ),
                              ],
                            );
                          }),
                    )
                  : Container(),
            )
            .toList(),
      ],
    );
  });
}

//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(
//                               top: 8,
//                               left: 20,
//                             ),
//                             child: Text(
//                               e['category'].toString(),
//                               style: const TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                           Container(
//                             margin: const EdgeInsets.only(
//                               top: 5,
//                               left: 20,
//                               right: 10,
//                               bottom: 10,
//                             ),
//                             height: MediaQuery.of(context).size.height * 0.2,
//                             width: MediaQuery.of(context).size.width * 0.28,
// // height: 200,
// // width: 200,
//                             decoration: const BoxDecoration(
//                               color: Colors.black87,
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(
//                                   8,
//                                 ),
//                               ),
//                             ),
//                             child: Column(
//                               children: [
//                                 Expanded(
//                                   flex: 7,
//                                   child: Container(
//                                     height: MediaQuery.of(context).size.height *
//                                         0.8,
//                                     width: double.infinity,
//                                     decoration: const BoxDecoration(
//                                       borderRadius: BorderRadius.all(
//                                         Radius.circular(8),
//                                       ),
//                                       color: Colors.white,
//                                     ),
//                                     child: Stack(
//                                       children: [
//                                         Container(
//                                           decoration: BoxDecoration(
//                                             borderRadius:
//                                                 const BorderRadius.all(
//                                               Radius.circular(
//                                                 8,
//                                               ),
//                                             ),
//                                             image: DecorationImage(
//                                                 image: NetworkImage(
//                                                   e['image'].toString(),
//                                                 ),
//                                                 fit: BoxFit.cover),
//                                           ),
//                                         ),
//                                         Text(
//                                           e['quote'].toString(),
//                                           style: const TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             color: Colors.white,
//                                             fontSize: 13,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: Text(
//                                     e['name'].toString(),
//                                     style: const TextStyle(
//                                       fontWeight: FontWeight.w700,
//                                       color: Colors.white,
//                                       fontSize: 18,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
