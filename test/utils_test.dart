import 'dart:convert';
import 'dart:io';

import 'package:melos/src/common/io.dart';
import 'package:melos/src/common/utils.dart';
import 'package:melos/src/logging.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:test/test.dart';

import 'matchers.dart';
import 'utils.dart';

void main() {
  test('Test zsh command execution', () async {
    final command = ['echo', 'Hello World'];
    final process = await startCommandRaw(command);

    final output = await process.stdout.transform(utf8.decoder).join();
    expect(output.trim(), equals('Hello World'));
  });
}
