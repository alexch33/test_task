import 'package:flutter/material.dart';
import 'package:until_pro_exercise/models/department/department.dart';

class CategoryTileListItem extends StatelessWidget {
  final DepartmentModel? category;
  final bool isSelected;
  final Function(DepartmentModel category)? onCategorySelect;

  const CategoryTileListItem(
      {Key? key,
      required this.category,
      this.isSelected = false,
      this.onCategorySelect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BorderRadius borderRadius = BorderRadius.circular(8.0);
    final Color fontColor = isSelected ? Colors.white : Colors.black;

    return Container(
      margin: EdgeInsets.all(8),
      child: Material(
        color: isSelected ? Colors.black : Colors.white,
        borderRadius: borderRadius,
        child: InkWell(
          borderRadius: borderRadius,
          onTap: () {
            if (onCategorySelect != null && category != null) {
              onCategorySelect!(category!);
            }
          },
          child: Container(
            padding: EdgeInsets.all(6),
            margin: EdgeInsets.all(4),
            height: 50,
            width: double.infinity,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    category?.name ?? 'Category Null',
                    softWrap: true,
                    style: TextStyle(fontSize: 14, color: fontColor),
                  ),
                ),
                Text(
                  "1",
                  style: TextStyle(color: fontColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
