import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:until_pro_exercise/models/article/article.dart';
import 'package:until_pro_exercise/redux/department/app_state.dart';

import 'left_bar_menu_item_widget.dart';

class TableBlockWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Table 25",
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(fontSize: 24),
                  ),
                  LeftBarMenuItemWidget(
                    svgChildPath: 'project_icons/resize_simple.svg',
                    color: Colors.grey,
                    size: 32,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(0, 2),
                        color: Colors.grey.withOpacity(0.5))
                  ],
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(right: 4),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black),
                      alignment: Alignment.center,
                      child: Text(
                        "Order",
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                    Expanded(
                        child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Table 25 info",
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(color: Colors.black),
                      ),
                    ))
                  ],
                ),
              ),
              Expanded(
                  flex: 2,
                  child: StoreBuilder(
                    builder: (BuildContext context, Store<AppState> store) {
                      return ListView.builder(
                          controller: ScrollController(),
                          itemCount: store.state.cart.keys.length,
                          itemBuilder: (context, index) {
                            ArticleModel currentArticle =
                                store.state.cart.keys.toList()[index];
                            int currentQuantity =
                                store.state.cart[currentArticle] ?? 0;

                            return Container(
                              margin: EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(right: 16),
                                      child: Text(currentQuantity.toString())),
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        currentArticle.name,
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        currentArticle.oman_text ?? '',
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14),
                                      ),
                                    ],
                                  )),
                                  Column(
                                    children: [
                                      Text(
                                        '€ ${(currentArticle.purchase_price * currentQuantity).toStringAsFixed(2)}',
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                      Text(
                                        '€ ${0.toStringAsFixed(2)}',
                                        softWrap: true,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          });
                    },
                  )),
              Divider(
                color: Colors.grey,
                thickness: 0.8,
              ),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total:",
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  StoreBuilder(
                    builder: (BuildContext context, Store<AppState> store) =>
                        Text(
                      '€ ${store.state.totalCartPrice().toStringAsFixed(2)}',
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
        Expanded(flex: 2, child: Container())
      ],
    );
  }
}
