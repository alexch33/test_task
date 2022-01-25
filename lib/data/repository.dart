import 'package:until_pro_exercise/data/network/apis/departments/departments_api.dart';
import 'package:until_pro_exercise/models/article/article.dart';
import 'package:until_pro_exercise/models/department/department.dart';

class Repository {
  // api objects
  final DepartmensApi _departmensApi;

  // constructor
  Repository(
    this._departmensApi,
  );

  Future<Map<String, DepartmentModel>> _fetchDepartments() async {
    Map<String, DepartmentModel> result = {};
    final loadedJson = await _departmensApi.fetchDataFromAssets();
    for (var entry in loadedJson["departments"].entries) {
      DepartmentModel department =
          DepartmentModel.fromMap({entry.key: entry.value});
      result[department.id] = department;
    }

    return result;
  }

  Future<Map<String, ArticleModel>> _fetchArticles() async {
    Map<String, ArticleModel> result = {};
    final loadedJson = await _departmensApi.fetchDataFromAssets();
    for (var entry in loadedJson["articles"].entries) {
      ArticleModel article = ArticleModel.fromMap({entry.key: entry.value});
      result[article.id] = article;
    }

    return result;
  }

  Future<Map<DepartmentModel, List<ArticleModel>>> fetchAppData() async {
    var articles = await _fetchArticles();
    var departments = await _fetchDepartments();

    Map<DepartmentModel, List<ArticleModel>> resultData = {};
    // will be departments in result only if articles presents inside it
    for (ArticleModel article in articles.values) {
      final depKey = departments[article.id_departament.toString()];
      if (depKey != null && resultData[depKey] != null) {
        resultData[depKey]?.add(article);
      }
      if (depKey != null && resultData[depKey] == null) {
        resultData[depKey] = [];
      }
    }
      
    return resultData;
  }
}
