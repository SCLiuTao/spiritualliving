import 'package:get_storage/get_storage.dart';

class StorageManage {
  final _box = GetStorage();

  static final StorageManage _instance = StorageManage._internal();

  factory StorageManage() => _instance;

  StorageManage._internal();

  Future<void> save(String key, dynamic value) async {
    /// 存储数据
    await _box.write(key, value);
  }

  dynamic read(String key) {
    /// 读取指定键的数据
    return _box.read(key);
  }

  Future<void> delete(String key) async {
    /// 删除指定键的数据
    await _box.remove(key);
  }

  Future<void> clearAll() async {
    /// 清空存储的所有数据
    await _box.erase();
  }
}
