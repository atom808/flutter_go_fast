import 'package:flutter_go_fast/app/core/interfaces/shared_repository_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedRepository implements ISharedRepositoryInterface{
  
  @override
  Future<SharedPreferences> SetInstance() async {
    return await SharedPreferences.getInstance();
  }

  @override
  Future<dynamic> getValue<T>(String key) async {
    return await SetInstance().then((SharedPreferences){
      switch (T) {
        case double:
          return SharedPreferences.getDouble(key);
          break;
        case int:
          return SharedPreferences.getInt(key);
          break;
        case String:
          return SharedPreferences.getString(key);
          break;
        case List:
          return SharedPreferences.getStringList(key);
          break;
        case bool:
          return SharedPreferences.getBool(key);
          break;
        default:
          return SharedPreferences.getString(key);
      }
    });
  }

  @override
  Future<bool> setValue<T>(String key, dynamic value) async {
    return await SetInstance().then((SharedPreferences){
      switch (T) {
        case double:
          return SharedPreferences.setDouble(key, value);
          break;
        case int:
          return SharedPreferences.setInt(key, value);
          break;
        case String:
          return SharedPreferences.setString(key, value);
          break;
        case List:
          return SharedPreferences.setStringList(key, value);
          break;
        case bool:
          return SharedPreferences.setBool(key, value);
          break;
        default:
          return SharedPreferences.setString(key, value);
      }
    });
  }
}