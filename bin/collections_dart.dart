main() {
  collectionPlayground();
}

void collectionPlayground() {
  listground();
  mapPlayground();
  setPlayground();
  collectionControlFlow();
}

void listground() {
  //creatx with literal syntax
  final List<int> numbers = [1, 2, 3, 5, 7];
  numbers.add(11);
  numbers.addAll([8, 17, 35]);
  //assigning via subscript
  numbers[1] = 15;
  print('The secondd number is ${numbers[1]}');
  for (int number in numbers) {
    print(number);
  }
}

void mapPlayground() {
  //map literal syntax
  final Map<String, int> ages = {
    'Clark': 26,
    'Peter': 35,
    'Bruce': 44,
  };
  //subscript syntax uses the key type
  //a string in this case
  ages['Steve'] = 48;
  final ageOfPeter = ages['Peter'];
  print('Peter is $ageOfPeter years old');
  ages.remove('Peter');
  ages.forEach((String name, int age) {
    print('$name is $age years old');
  });
}

void setPlayground() {
  //set literal, similar to Map, but no keys
  final Set<String> ministers = {
    'justin',
    'Stephen',
    'Paul',
    'Jean',
    'Kim',
    'Brain'
  };
  ministers.addAll({
    'John',
    'Pierre',
    'Joe',
    'Pierre'
  }); // pierre is a duplicate, which is not allowed in a set.
  final isJustinAMinistries = ministers.contains('justin');
  print(
      isJustinAMinistries); //pierre will only be printed once. Duplicates are authomatically rejected
  for (String primeMiister in ministers) {
    print('$primeMiister is a Prime Minister.');
  }
}

void collectionControlFlow() {
  final addMore = true;
  final randomNumbers = [
    34,
    344,
    43,
    24,
    if (addMore) ...[
      123,
      258,
      512,
    ],
  ];
  final doubled = [
    for (int number in randomNumbers) number * 2,
  ];
  print(doubled);
}
