import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_saga/redux_saga.dart';
import 'package:until_pro_exercise/constants/strings.dart';
import 'package:until_pro_exercise/data/repository.dart';
import 'package:until_pro_exercise/di/components/app_component.dart';
import 'package:until_pro_exercise/di/modules/netwok_module.dart';
import 'package:until_pro_exercise/redux/department/app_state.dart';
import 'package:until_pro_exercise/redux/department/department_actions.dart';
import 'package:until_pro_exercise/redux/department/department_reducer.dart';
import 'package:until_pro_exercise/redux/department/sagas.dart';
import 'package:until_pro_exercise/routes.dart';
import 'package:until_pro_exercise/ui/home/home.dart';
import 'package:redux/redux.dart';

// global instance for app component

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) async {
    Repository repo = AppComponent.getReposInstance(
      NetworkModule(),
    )!;
    runApp(MyApp(repo));
  });
}

class MyApp extends StatelessWidget {
  final Repository repo;

  MyApp(this.repo);

  @override
  Widget build(BuildContext context) {
    var sagaMiddleware = createSagaMiddleware();

    final store = Store<AppState>(
      appReducer,
      initialState: AppState(),
      middleware: [applyMiddleware(sagaMiddleware)],
    );

    MySagaController.repository = repo;

    sagaMiddleware.setStore(store);
    sagaMiddleware.run(fetchAppDataSaga);

    return StoreProvider(
        store: store..dispatch(AppDataLoadingAction()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: Theme.of(context)
              .copyWith(scaffoldBackgroundColor: const Color(0xfff2f4fa)),
          title: Strings.appName,
          routes: Routes.routes,
          home: HomeScreen(),
        ));
  }
}
