import 'package:festival_post/Utils/data.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: data.length,
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
                              return Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(20),
                                    height: 100,
                                    width: 100,
                                    // decoration: BoxDecoration(
                                    //     image: DecorationImage(
                                    //         image: NetworkImage(
                                    //             data.image[index]))),
                                  ),
                                ],
                              );
                            }),
                      ),
                    ),
                  ],
                );
              })),
    );
  }
}
// Row(
// children: [
// Expanded(
// child: SizedBox(
// height: 200,
// width: 200,
// child: ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: 3,
// itemBuilder: (context, index) {
// return Row(
// children: [
// Container(
// padding: EdgeInsets.all(20),
// height: 100,
// width: 100,
// color: Colors.red,
// ),
// SizedBox(
// width: 10,
// ),
// Container(
// padding: EdgeInsets.all(20),
// height: 100,
// width: 100,
// color: Colors.blueAccent,
// ),
// SizedBox(
// width: 10,
// ),
// ],
// );
// }),
// ),
// ),
// ],
// ),
// Row(
// children: [
// Expanded(
// child: SizedBox(
// height: 200,
// width: 200,
// child: ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: data.length,
// itemBuilder: (context, index) {
// return Row(
// children: [
// Container(
// padding: EdgeInsets.all(20),
// height: 100,
// width: 100,
// color: Colors.red,
// ),
// SizedBox(
// width: 10,
// ),
// Container(
// padding: EdgeInsets.all(20),
// height: 100,
// width: 100,
// color: Colors.blueAccent,
// ),
// SizedBox(
// width: 10,
// ),
// ],
// );
// }),
// ),
// ),
// ],
// ),
// ListView.builder(
// shrinkWrap: true,
// physics: NeverScrollableScrollPhysics(),
// // scrollDirection: Axis.horizontal,
// itemCount: 3,
// itemBuilder: (context, index) {
// return Column(
// children: [
// Container(
// padding: EdgeInsets.all(20),
// height: 100,
// width: 100,
// color: Colors.red,
// ),
// SizedBox(
// width: 10,
// ),
// Container(
// padding: EdgeInsets.all(20),
// height: 100,
// width: 100,
// color: Colors.blueAccent,
// ),
// SizedBox(
// width: 10,
// ),
// ],
// );
// }),
