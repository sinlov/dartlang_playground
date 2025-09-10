// this test for tour => asynchrony_support : handling_futures
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

import 'package:test/test.dart';
import 'package:dartlang_playground/tour/asynchrony_support/handling_futures.dart';

main() {
  group('handling_futures', () {
    test('handling await', () {
      checkVersion();
      expect(version, equals('LOOK_UP'));
    });

    test('handling futures', () async {
      await checkVersion();
      expect(version, equals('CHECK_VERSION_FINISH'));
      expect(await lookUpVersionAsync(), equals('1.0.0'));
    });

    test('try await', () async {
      version = null;
      try {
        await checkVersion();
      } catch (e) {
        //抛出空异常
        expect(version, equals(null));
      }
    });

    test('multiple times in an async function', () async {
      version = 'DEFAULT';
      await checkVersion();
      var entrypoint = await findEntrypoint();
      var exitCode = await runExecutable(entrypoint);
      expect(exitCode, equals(0));
      await flushThenExit(exitCode);
    });
  });
}
