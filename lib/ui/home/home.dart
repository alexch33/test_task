import 'package:flutter/material.dart';
import 'package:until_pro_exercise/widgets/empty_app_bar_widget.dart';
import 'widgets/categories_block_widget.dart';
import 'widgets/fast_runner_block_widget.dart';
import 'widgets/left_side_widget.dart';
import 'widgets/options_block_widget.dart';

import 'widgets/right_side_widget.dart';
import 'widgets/table_block_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(),
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
            child: Container(
                margin: EdgeInsets.only(top: 32, right: 16),
                child: TableBlockWidget()),
          ),
          RightSideWidget()
        ],
      ),
    ));
  }
}
