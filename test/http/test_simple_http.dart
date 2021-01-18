import 'dart:io';

import 'package:test/test.dart';

void main() {
  HttpServer server;
  Uri url;
  setUp(() async {
    server = await HttpServer.bind('localhost', 0);
    url = Uri.parse('http://${server.address.host}:${server.port}');
  });

  tearDown(() async {
    await server.close(force: true);
    server = null;
    url = null;
  });

  test('http server', (){

  });
}