import 'package:flutter/material.dart';
import 'widgets/categories_block_widget.dart';
import 'widgets/fast_runner_block_widget.dart';
import 'widgets/left_side_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      child: Row(
        children: [
          LeftSideWidget(),
          Expanded(
            flex: 2,
            child: Container(
                margin: EdgeInsets.only(left: 16, top: 32, right: 8),
                child: CategoriesBlockWidget()),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.only(top: 32),
              child: FastRunnersBlockWidget(),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Container(
                  color: Colors.red,
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Container(
                  color: Colors.blue,
                )
              ],
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Text("Categories"),
                  Container(
                    width: 30,
                    height: 30,
                    color: Colors.green,
                  )
                ],
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(child: Text("category Name")),
                        Text("1")
                      ],
                    ),
                  ],
                ),
              ))
            ],
          )
        ],
      ),
    ));
  }
}
