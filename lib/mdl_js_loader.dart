library tekartik.mdl_js.loader;


import 'package:tekartik_utils/js_utils.dart';
import 'dart:async';
import 'dart:js' as js;

Future loadMdlJs() async {
  // already loaded?
  if (js.context['componentHandler'] != null) {
    return null;
  }

  // load mdl js
  await loadJavascriptScript("packages/tekartik_mdl_js/js/material.min.js");
  return null;
}
