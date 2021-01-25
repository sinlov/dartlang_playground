// this source for tour => asynchrony_support : handling_futures
// authorized sinlov at @2021
// mail: sinlovppt@gmail.com

var version = 'DEFAULT';

String lookUpVersion() {
  if (version == null) {
    throw NullThrownError();
  }
  version = 'LOOK_UP';
  return 'DONE_LOOK_UP';
}

Future<String> lookUpVersionAsync() async => '1.0.0';

Future checkVersion() async {
  var v = await lookUpVersion();
  print('v: ${v}');
  if (v == 'DONE_LOOK_UP') {
    version = 'CHECK_VERSION_FINISH';
  } else {
    version = 'CHECK_VERSION_ERROR';
  }
}

// Although an async function might perform time-consuming operations, it doesn’t wait for those operations.
// Instead, the async function executes only until it encounters its first await expression (details).
// Then it returns a Future object, resuming execution only after the await expression completes.

Future<String> findEntrypoint() async {
  if (version == null) {
    throw NullThrownError();
  }
  return 'entry version passs';
}

Future<int> runExecutable(String entrypoint) async {
  if (entrypoint == null) {
    return -2;
  }
  if (version == null) {
    return -1;
  }
  return 0;
}

Future flushThenExit(int exitCode) async {
  // if (exitCode == 0) {
  // }
}
