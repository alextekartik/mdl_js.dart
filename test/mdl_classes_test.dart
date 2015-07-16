library tekartik.mdl_js.classes_test;

import 'package:tekartik_mdl_js/mdl_classes.dart';
import 'package:test/test.dart';

void main() {

  group('classes', () {
    test('prefix', () async {
      expect(prefixed("button"), "mdl-button");
      expect(jsPrefixed("button"), "mdl-js-button");
    });

  });


}
