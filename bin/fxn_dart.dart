void main() {
  // functionPlayground();
  // typedef NumberGetter = int Function();
  //  consumeClosure();
  int dayOfWeek = 7;
  String myDay = getDay(dayOfWeek);
  print(myDay);
}

void functionPlayground() {
  classicalFunctions();
  optionalParameters();

  // duplicate();
}

void classicalFunctions() {
  print('Anna');
  print('Micheal');
  final sum = add(5, 3);
  print(sum);
  print('10 Fractional is ${factorial(10)}');
}

void optionalParameters() {
  unnamed('Huxley', 3);
  unnamed();
  named(greeting: 'Greetings and Salutations');
  named(name: 'Sonia');
  named(name: 'Alex', greeting: 'Bonjour');
  final multiply = duplicate('Mikey', times: 3);
  print(multiply);
}

void printMyName(String name) {
  print('Hello $name');
}

int add(int a, int b) {
  return a + b;
}

int factorial(int number) {
  if (number <= 0) {
    return 1;
  }
  return number * factorial(number - 1);
}

void unnamed([String? name, int? age]) {
  final actualName = name ?? 'Un-Known';
  final actualAge = age ?? 0;
  print('$actualName is $actualAge years old.');
}

void named({String? greeting, String? name}) {
  final actualGreeting = greeting ?? 'Hello';
  final actualName = name ?? 'Mystery Person';
  print('$actualGreeting, $actualName!');
}

String duplicate(String name, {int times = 1}) {
  final merged = StringBuffer(name);
  for (var i = 1; i < times; i++) {
    merged.write('$name');
  }
  return merged.toString();
}
//closure

// void callbackExample(void function(String value) callback){
//   callback('Hello Callback');
// }
// void printSomething(String value){
//   print(value);
// }
// int powerOfTwo(NumberGetter getter){
//   return getter()*getter();
// }

// void consumeClosure(){
//   int getFour() => 4;
//   final squared = powerOfTwo(getFour);
//   print(squared);
//   callbackExample(printSomething);
// }

String getDay(int day) {
  switch (day) {
    case 1:
      return 'Monday';
    case 2:
      return 'Tuesday';
    case 3:
      return 'Wednesday';
    case 4:
      return 'Thursday';
    case 5:
      return 'Friday';
    case 6:
      return 'Saturday';
    case 7:
      return 'Sunday';
    default:
      return 'Invalid day';
  }
}
