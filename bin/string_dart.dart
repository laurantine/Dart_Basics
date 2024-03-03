// string an string interpolation

void main() {
  stringPlayground();
}

void stringPlayground() {
  basicStringDeclaration();
  multiLineStrings();
  combiningStrings();
}

void basicStringDeclaration() {
  print('single quotes');
  final aBoldStatement = 'Dart isn\'t loosely typed.';
  print(aBoldStatement);
  print('Raw String');
  final rawString = r'Show an escape \ character';
  print(rawString);
  print("Hello, World");
  final aMoreMildOpinion = "Dart's popularity has skyrocketed with Flutter";
  print(aMoreMildOpinion);
  final mixAndMatch =
      'Every programmer should write "hello, World" when learning a new lauguage.';
  print(mixAndMatch);
}

void multiLineStrings() {
  final withEscaping = 'one Fish\nTwo Fish\nRed Fish\nblue Fish';
  print(withEscaping);
  final hamlet = '''
To be, or not to be, that is the question:
  Whether 'tis nobler in the mind to suffer
  The slings and arrows of outrageous fortune,
  Or to take arms against a sea of troubles
  And by opposing end them.
''';
  print(hamlet);
}

void combiningStrings() {
  traditionalConcatination();
  modernInterpolation();
}

void traditionalConcatination() {
  final hello = 'Hello';
  final world = 'world';
  final combined = hello + ' ' + world;
  print(combined);
}

void modernInterpolation() {
  final year = 2011;
  final interpolated = 'dart was annouced in $year';
  print(interpolated);
  final (age) = 42;
  final howOld = 'i am $age ${age == 1 ? 'year' : 'years'} old.';
  print(howOld);
}

// List fruits = ['Strawberry', 'Coconot', 'Orange', 'Mango', 'apple'];
// StringBuffer buffer = StringBuffer();
// for (String fruit in fruits){
//   buffer.write(fruit);
//   buffer.write(' ');
// }
// print(buffer.toString());