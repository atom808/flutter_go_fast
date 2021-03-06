// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppControllerBase, Store {
  final _$themeAppAtom = Atom(name: '_AppControllerBase.themeApp');

  @override
  IThemeAppInterface get themeApp {
    _$themeAppAtom.reportRead();
    return super.themeApp;
  }

  @override
  set themeApp(IThemeAppInterface value) {
    _$themeAppAtom.reportWrite(value, super.themeApp, () {
      super.themeApp = value;
    });
  }

  final _$getThemeDataAsyncAction =
      AsyncAction('_AppControllerBase.getThemeData');

  @override
  Future getThemeData() {
    return _$getThemeDataAsyncAction.run(() => super.getThemeData());
  }

  final _$setThemeDataAsyncAction =
      AsyncAction('_AppControllerBase.setThemeData');

  @override
  Future setThemeData(ThemeMode themeMode, {bool saveShared = true}) {
    return _$setThemeDataAsyncAction
        .run(() => super.setThemeData(themeMode, saveShared: saveShared));
  }

  @override
  String toString() {
    return '''
themeApp: ${themeApp}
    ''';
  }
}
