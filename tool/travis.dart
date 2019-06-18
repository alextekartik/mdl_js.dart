import 'package:process_run/shell.dart';

Future main() async {
  var shell = Shell();

  await shell.run('''

  dartanalyzer --fatal-warnings lib test tool example
  dartfmt -w lib test tool example --set-exit-if-changed

  pub run test -p vm,chrome -j 1
  ''');
}
