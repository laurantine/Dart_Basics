main() {
  classPlayground();
}

void classPlayground() {
  final name = OfficialName('Mr', 'Clark', 'Kent');
  final message = name.toString();
  print(message);
}

class Name {
  final String first;
  final String last;
  Name(this.first, this.last);
  @override
  String toString() {
    return '$first $last';
  }
}

class OfficialName extends Name {
  final String _title;
  OfficialName(this._title, String first, String last) : super(first, last);
  @override
  String toString() {
    return '$_title. ${super.toString()}';
  }
}
