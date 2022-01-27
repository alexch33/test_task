import 'package:flutter/material.dart';
import 'left_bar_menu_item_widget.dart';

class RightSideWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) => SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: ScrollController(),
        child: Container(
          width: 90,
          alignment: Alignment.center,
          color: Colors.white,
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constrains.maxHeight),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  children: [
                    LeftBarMenuItemWidget(
                      svgChildPath: 'assets/project_icons/search_colored.svg',
                      isTransparent: true,
                    ),
                    Text("Search")
                  ],
                ),
                Column(
                  children: [
                    LeftBarMenuItemWidget(
                      svgChildPath: 'assets/project_icons/info_colored.svg',
                      isTransparent: true,
                    ),
                    Text("Info")
                  ],
                ),
                Column(
                  children: [
                    LeftBarMenuItemWidget(
                      svgChildPath: 'assets/project_icons/cash_colored.svg',
                      isTransparent: true,
                    ),
                    Text("Cash")
                  ],
                ),
                Column(
                  children: [
                    LeftBarMenuItemWidget(
                      svgChildPath: 'assets/project_icons/options_colored.svg',
                      isTransparent: true,
                    ),
                    Text("Options")
                  ],
                ),
                Column(
                  children: [
                    LeftBarMenuItemWidget(
                      svgChildPath: 'assets/project_icons/supplements_colored.svg',
                      isTransparent: true,
                    ),
                    Text("Supplements")
                  ],
                ),
                Column(
                  children: [
                    LeftBarMenuItemWidget(
                      svgChildPath: 'assets/project_icons/messages_colored.svg',
                      isTransparent: true,
                    ),
                    Text("Messages")
                  ],
                ),
                Column(
                  children: [
                    LeftBarMenuItemWidget(
                      svgChildPath: 'assets/project_icons/allergens_colored.svg',
                      isTransparent: true,
                    ),
                    Text("Allergens")
                  ],
                ),
                Column(
                  children: [
                    LeftBarMenuItemWidget(
                      svgChildPath: 'assets/project_icons/repeat_colored.svg',
                      isTransparent: true,
                    ),
                    Text("Repeat")
                  ],
                ),
                Column(
                  children: [
                    LeftBarMenuItemWidget(
                      svgChildPath: 'assets/project_icons/seat_name_colored.svg',
                      isTransparent: true,
                    ),
                    Text("Seat name")
                  ],
                ),
                Column(
                  children: [
                    LeftBarMenuItemWidget(
                      svgChildPath: 'assets/project_icons/client_colored.svg',
                      isTransparent: true,
                    ),
                    Text("Client")
                  ],
                ),
                Column(
                  children: [
                    LeftBarMenuItemWidget(
                      svgChildPath: 'assets/project_icons/client_history_colored.svg',
                      isTransparent: true,
                    ),
                    Text("Client History")
                  ],
                ),
                Column(
                  children: [
                    LeftBarMenuItemWidget(
                      svgChildPath: 'assets/project_icons/tip_colored.svg',
                      isTransparent: true,
                    ),
                    Text("Tip")
                  ],
                ),
                Column(
                  children: [
                    LeftBarMenuItemWidget(
                      svgChildPath: 'assets/project_icons/dinner_colored.svg',
                      isTransparent: true,
                    ),
                    Text("Dinner")
                  ],
                ),
                Column(
                  children: [
                    LeftBarMenuItemWidget(
                      svgChildPath: 'assets/project_icons/history_colored.svg',
                      isTransparent: true,
                    ),
                    Text("History")
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
