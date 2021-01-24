
var _status = "IDE";

void loadLibrary(){
  print('Lazily loading a library [ hello ] is loading...');
  _status = 'HAS_LOAD';
}
String status(){
  return _status;
}