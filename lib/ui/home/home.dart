import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:until_pro_exercise/redux/department/app_state.dart';
import 'package:redux/redux.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          StoreBuilder(builder: (BuildContext context, Store<AppState> store) {
        return Center(
          child: Text(store.state.isLoading
              ? "Loading..."
              : store.state.appData.keys.length.toString()),
        );
      }),
    );
  }
}
