import 'package:flutter/material.dart';

import 'custom_divider_left_side.dart';
import 'left_bar_menu_item_widget.dart';

class LeftSideWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) => SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: ScrollController(),
        child: Container(
          color: Colors.white,
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constrains.maxHeight),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                    height: 40,
                    width: 40,
                    margin: EdgeInsets.all(16),
                    child: Image.asset('icons/ic_appicon.png')),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    LeftBarMenuItemWidget(
                      svgChildPath: 'project_icons/hide_simple.svg',
                    ),
                    LeftBarMenuItemWidget(
                      svgChildPath: 'project_icons/house_simple.svg',
                    ),
                    CustomDividerLeftSide(),
                    LeftBarMenuItemWidget(
                      svgChildPath: 'project_icons/orders_simple.svg',
                      isSelected: true,
                    ),
                    LeftBarMenuItemWidget(
                      svgChildPath: 'project_icons/other_simple.svg',
                    ),
                    LeftBarMenuItemWidget(
                      svgChildPath: 'project_icons/discounts_simple.svg',
                    ),
                    LeftBarMenuItemWidget(
                      svgChildPath: 'project_icons/history_simple.svg',
                    ),
                    CustomDividerLeftSide(),
                    LeftBarMenuItemWidget(
                      svgChildPath: 'project_icons/stock_simple.svg',
                    ),
                    LeftBarMenuItemWidget(
                      svgChildPath: 'project_icons/stock_simple.svg',
                    ),
                    LeftBarMenuItemWidget(
                      svgChildPath: 'project_icons/reports_simple.svg',
                    ),
                    LeftBarMenuItemWidget(
                      svgChildPath: 'project_icons/control_simple.svg',
                    ),
                    LeftBarMenuItemWidget(
                      svgChildPath: 'project_icons/manager_simple.svg',
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      LeftBarMenuItemWidget(
                        svgChildPath: 'project_icons/logout_simple.svg',
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              margin: EdgeInsets.all(8),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.yellow),
                              child: Text(
                                "A",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              "Andrew",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
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
    );
  }
}