import 'package:until_pro_exercise/data/network/apis/departments/departments_api.dart';
import 'package:until_pro_exercise/data/network/dio_client.dart';
import 'package:until_pro_exercise/data/repository.dart';
import 'package:until_pro_exercise/di/modules/netwok_module.dart';

/// The top level injector that stitches together multiple app features into
/// a complete app.
abstract class AppComponent {
  static Repository? _repository;
  static bool isInited = false;
  NetworkModule? networkModule;

  static Repository? getReposInstance(NetworkModule networkModule) {
    if (isInited) return _repository;

    DioClient _dioClient = networkModule
        .provideDioClient(networkModule.provideDio());

    DepartmensApi _departmentsApi = DepartmensApi(_dioClient);

    isInited = true;

    _repository = Repository(_departmentsApi);

    return _repository;
  }
}
