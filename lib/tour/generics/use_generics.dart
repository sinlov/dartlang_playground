// this source for tour => generics : use_generics
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

abstract class ObjectCache {
  Object getByKey(String key);
  void setByKey(String key, Object value);
}

abstract class StringCache {
  String getByKey(String key);
  void setByKey(String key, String value);
}

// Properly specifying generic types results in better generated code.
// Can use generics to reduce code duplication.
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

class BizCache extends Cache<String> {
  Map<String, String>? map;
  @override
  String getByKey(String key) {
      return map?[key]??'';
    }

    @override
    void setByKey(String key, String value) {
    this.map?[key] = value;
  }

  BizCache.map(){
    this.map = Map<String, String>();
  }
}