void main() {
  cascadePlayground();
  // final url = UrlBuilder()
  //     // .setScheme('https')
  //     // .setHost('dart.dev')
  //     // .setPath('/guides/language/language-tour#cascade-notation-')
  //     // .build();

  // print(url);
}

// class UrlBuilder {
//   String? _scheme;
//   String? _host;
//   String? _path;
//   UrlBuilder setScheme(String value) {
//     _scheme = value;
//     return this;
//   }

//   UrlBuilder setHost(String value) {
//     _host = value;
//     return this;
//   }

//   UrlBuilder setPath(String value) {
//     _path = value;
//     return this;
//   }

//   String build() {
//     assert(_scheme != null);
//     assert(_host != null);
//     assert(_path != null);
//     return '$_scheme://$_host/$_path';
//   }
// }

class UrlBuilder {
  String scheme = '';
  String host = '';
  List<String> routes = [];
  @override
  String toString() {
    final paths = [host, if (routes != []) ...routes];
    final path = paths.join('/');
    return '$scheme://$path';
  }
}

void cascadePlayground() {
  final url = UrlBuilder()
    ..scheme = 'https'
    ..host = 'dart.dev'
    ..routes = [
      'guides',
      'language',
      'laguage-tour#cascade-notation',
    ];
  print(url);

  final numbers = [42, 88, 53, 232, 55]
    ..insert(0, 8)
    ..sort((a, b) => a.compareTo(b));

  print('the largest number in the list is ${numbers.last}');
}
