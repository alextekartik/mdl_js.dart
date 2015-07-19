@TestOn("browser")
library tekartik.mdl_js.compoenent_handler_test;

import 'package:tekartik_mdl_js/mdl_js_loader.dart';
import 'package:tekartik_mdl_js/mdl_layout.dart';
import 'package:test/test.dart';
import 'dart:html';

void main() {

  group('layout', () {
    setUp(() async {
      await(loadMdlJs());
    });


    test('upgrade', () async {
      var layout = layoutCreate();
      new DivElement()..append(layout); // need container
      expect(layout.attributes['data-upgraded'], isNull);
      layoutUpgrade(layout);
      expect(layout.attributes['data-upgraded'], contains('MaterialLayout'));
    });
  });


}