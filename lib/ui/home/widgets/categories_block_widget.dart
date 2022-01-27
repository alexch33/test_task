import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:until_pro_exercise/models/department/department.dart';
import 'package:until_pro_exercise/redux/department/app_state.dart';
import 'package:until_pro_exercise/redux/department/department_actions.dart';

import 'category_tile_list_item.dart';
import 'left_bar_menu_item_widget.dart';

class CategoriesBlockWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                "Categories",
                softWrap: true,
                maxLines: 1,
                style: TextStyle(fontSize: 24),
              ),
            ),
            LeftBarMenuItemWidget(
                svgChildPath: 'assets/project_icons/filter_simple.svg',
                size: 40,
                color: Colors.grey)
          ],
        ),
        Expanded(child:
            StoreBuilder(builder: (BuildContext contex, Store<AppState> store) {
          return ListView.builder(
              controller: ScrollController(),
              itemCount: store.state.appData.keys.length,
              itemBuilder: (context, index) {
                DepartmentModel currentCateggory =
                    store.state.appData.keys.toList()[index];
                return CategoryTileListItem(
                  category: currentCateggory,
                  isSelected: currentCateggory == store.state.selectedCategory,
                  onCategorySelect: (category) =>
                      store.dispatch(AppDataSelectCategoryAction(category)),
                );
              });
        }))
      ],
    );
  }
}