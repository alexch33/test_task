import 'package:redux/redux.dart';

import 'department_actions.dart';
import 'app_state.dart';

/// Reducer
final appReducer = combineReducers<AppState>([
  TypedReducer<AppState, AppDataEmptyAction>(_onEmpty),
  TypedReducer<AppState, AppDataLoadingAction>(_onLoad),
  TypedReducer<AppState, AppDataErrorAction>(_onError),
  TypedReducer<AppState, AppDataResultAction>(_onResult),
]);

AppState _onEmpty(AppState state, AppDataEmptyAction action) =>
    state.copyWith(appData: {});

AppState _onLoad(AppState state, AppDataLoadingAction action) =>
    state.copyWith(isLoading: true);

AppState _onError(AppState state, AppDataErrorAction action) =>
    state.copyWith(isLoading: false);

AppState _onResult(AppState state, AppDataResultAction action) =>
    action.result.appData.isEmpty
        ? state.copyWith(appData: {}, isLoading: false)
        : state.copyWith(appData: action.result.appData, isLoading: false);
