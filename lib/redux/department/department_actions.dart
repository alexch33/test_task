import 'package:until_pro_exercise/models/article/article.dart';
import 'package:until_pro_exercise/models/department/department.dart';

/// Actions
class DepartmentsSelectActionAction {
  final int depId;

  DepartmentsSelectActionAction(this.depId);
}

class AppDataEmptyAction {}

class AppDataLoadingAction {}

class AppDataErrorAction {}

class AppDataResultAction {
  final AppDataResult result;

  AppDataResultAction(this.result);
}

class AppDataResult {
  final Map<DepartmentModel, List<ArticleModel>> appData;

  AppDataResult(this.appData);
}

class AppDataSelectCategoryAction {
  final DepartmentModel selectedCategory;

  AppDataSelectCategoryAction(this.selectedCategory);
}

class AppDataAddArticleToCartAction {
  final ArticleModel articleToAdd;

  AppDataAddArticleToCartAction(this.articleToAdd);
}

class AppDataRemoveArticleFromCartAction {
  final ArticleModel articleToRemove;

  AppDataRemoveArticleFromCartAction(this.articleToRemove);
}
