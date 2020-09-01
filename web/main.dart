import 'dart:html';

import 'package:html/parser.dart';

void main() {
  var output = querySelector('#output');
  var document =
      parse('Hello world! <a href="www.html5rocks.com">HTML5 rocks!</a>');
  print(document.outerHtml);
  output.innerHtml = document.body.innerHtml;
}
