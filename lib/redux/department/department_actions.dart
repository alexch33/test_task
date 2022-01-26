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

class AddArticleToCartAction {
  final ArticleModel articleToAdd;

  AddArticleToCartAction(this.articleToAdd);
}

class RemoveArticleFromCartAction {
  final ArticleModel articleToRemove;

  RemoveArticleFromCartAction(this.articleToRemove);
}
