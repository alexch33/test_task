import 'package:flutter/material.dart';
import 'package:redux_saga/redux_saga.dart';
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
            child: Container(
                margin: EdgeInsets.only(left: 8, top: 32),
                child: OptionsBlockWidget()),
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
          LeftSideWidget()
        ],
      ),
    ));
  }
}

class OptionsBlockWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Options",
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ],
    );
  }
}
