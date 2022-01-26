import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:until_pro_exercise/models/article/article.dart';
import 'package:until_pro_exercise/redux/department/app_state.dart';
import 'package:redux/redux.dart';
import 'package:until_pro_exercise/redux/department/department_actions.dart';

import 'left_bar_menu_item_widget.dart';

class FastRunnersBlockWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Fast Runners",
              softWrap: true,
              maxLines: 1,
              style: TextStyle(fontSize: 24),
            ),
            StoreBuilder(
              builder: (BuildContext context, Store<AppState> store) => Row(
                children: [
                  LeftBarMenuItemWidget(
                    svgChildPath: 'project_icons/minus_simple.svg',
                    color: Colors.grey,
                    size: 24,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      store.state.totalCartCount().toString(),
                      softWrap: true,
                      maxLines: 1,
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  LeftBarMenuItemWidget(
                    svgChildPath: 'project_icons/plus_simple.svg',
                    color: Colors.grey,
                    size: 24,
                  ),
                ],
              ),
            )
          ],
        ),
        Expanded(
          child: StoreBuilder(
              builder: (BuildContext context, Store<AppState> store) {
            List<ArticleModel> articles =
                store.state.selectedCategoryArticles();

            return GridView.builder(
              itemCount: articles.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 1.2),
              itemBuilder: (BuildContext context, int index) {
                final borderRadius = BorderRadius.circular(8);
                String price = articles[index].purchase_price != 0
                    ? articles[index].purchase_price.toString()
                    : "1";

                return Material(
                  color: Colors.white,
                  borderRadius: borderRadius,
                  child: InkWell(
                    borderRadius: borderRadius,
                    onTap: () {
                      store.dispatch(AppDataAddArticleToCartAction(articles[index]));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 3,
                                    color: Color(0xff8ec6d1),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 14),
                                    child: Text(
                                      "0",
                                      style: TextStyle(
                                          color: Colors.grey[300],
                                          fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 14),
                                child: Text(
                                  "32",
                                  style: TextStyle(
                                      color: Colors.grey[300], fontSize: 18),
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 18),
                            child: Text(
                              articles[index].name,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 14),
                                  child: Text(
                                    "50 ml",
                                    softWrap: true,
                                    style: TextStyle(
                                        color: Colors.grey[300], fontSize: 14),
                                  )),
                              Container(
                                  margin: EdgeInsets.only(right: 13),
                                  child: Text(
                                    '€ $price',
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.grey[300], fontSize: 14),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }),
        )
      ],
    );
  }
}
