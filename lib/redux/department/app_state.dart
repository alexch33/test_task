import 'package:until_pro_exercise/models/article/article.dart';
import 'package:until_pro_exercise/models/department/department.dart';

class AppState {
  final bool isLoading;
  final Map<DepartmentModel, List<ArticleModel>> appData;
  final DepartmentModel? selectedCategory;
  final Map<ArticleModel, int> cart;

  // constructor:---------------------------------------------------------------
  const AppState(
      {this.isLoading = false,
      this.appData = const {},
      this.selectedCategory,
      this.cart = const {}});

  AppState copyWith(
      {bool? isLoading,
      Map<DepartmentModel, List<ArticleModel>>? appData,
      DepartmentModel? selectedCategory,
      Map<ArticleModel, int>? cart}) {
    return AppState(
        isLoading: isLoading ?? this.isLoading,
        appData: appData ?? this.appData,
        selectedCategory: selectedCategory ?? this.selectedCategory,
        cart: cart ?? this.cart);
  }

  List<ArticleModel> selectedCategoryArticles() =>
      this.appData[this.selectedCategory] ?? [];

  double totalCartPrice() {
    double result = 0;
    for (MapEntry<ArticleModel, int> entry in cart.entries) {
      result += entry.key.purchase_price * entry.value;
    }

    return result;
  }

  int totalCartCount() {
    int result = 0;
    for (MapEntry<ArticleModel, int> entry in cart.entries) {
      result += entry.value;
    }

    return result;
  }
}
