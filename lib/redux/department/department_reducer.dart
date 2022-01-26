import 'package:redux/redux.dart';
import 'package:until_pro_exercise/models/article/article.dart';

import 'department_actions.dart';
import 'app_state.dart';

/// Reducer
final appReducer = combineReducers<AppState>([
  TypedReducer<AppState, AppDataEmptyAction>(_onEmpty),
  TypedReducer<AppState, AppDataLoadingAction>(_onLoad),
  TypedReducer<AppState, AppDataErrorAction>(_onError),
  TypedReducer<AppState, AppDataResultAction>(_onResult),
  TypedReducer<AppState, AppDataSelectCategoryAction>(_onCategorySlect),
  TypedReducer<AppState, AppDataAddArticleToCartAction>(_onArticleAddToCart),
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
        : state.copyWith(
            appData: action.result.appData,
            isLoading: false,
            selectedCategory: state.selectedCategory == null
                ? action.result.appData.keys.first
                : state.selectedCategory);

AppState _onCategorySlect(AppState state, AppDataSelectCategoryAction action) =>
    state.copyWith(selectedCategory: action.selectedCategory);

AppState _onArticleAddToCart(
    AppState state, AppDataAddArticleToCartAction action) {
  final Map<ArticleModel, int> newCart = Map.from(state.cart);
  newCart[action.articleToAdd] = 1 + (state.cart[action.articleToAdd] ?? 0);
  
  return state.copyWith(cart: newCart);
}
