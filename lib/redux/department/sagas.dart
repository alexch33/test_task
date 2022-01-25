import 'package:redux_saga/redux_saga.dart';
import 'package:until_pro_exercise/data/repository.dart';
import 'package:until_pro_exercise/models/article/article.dart';
import 'package:until_pro_exercise/models/department/department.dart';
import 'package:until_pro_exercise/redux/department/department_actions.dart';

class MySagaController {
  static Repository? repository;
}

// worker Saga: will be fired on UserFetchRequested actions
fetchAppData({dynamic action}) sync* {
  yield Try(() sync* {
    var appDataResult = Result<Map<DepartmentModel, List<ArticleModel>>>();
    yield Call(MySagaController.repository!.fetchAppData, args: [], result: appDataResult);
    yield Put(AppDataResultAction(AppDataResult(appDataResult.value ?? {})));
  }, Catch: (e, s) sync* {
    yield Put(AppDataErrorAction());
  });
}

fetchAppDataSaga() sync* {
  yield TakeEvery(fetchAppData, pattern: AppDataLoadingAction);
}
