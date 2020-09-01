import 'dart:html';

void main() {
  querySelector('#output').text = 'Your Dart app is running.';
  print('main ${CoolHeading}');
  window.customElements.define('cool-heading', () => CoolHeading());
}

class CoolHeading extends HtmlElement {
  factory CoolHeading() => Element.tag('cool-heading');

  CoolHeading.created() : super.created();

  @override
  void attached() {
    super.attached();
    print('cool heading attached');
  }
}
