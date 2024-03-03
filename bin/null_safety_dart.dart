void main() {
  // int? someNumber;
  int someNumber = 0;
  increaseValue(someNumber);
  // increaseValue(someNumber!);
}

// void increaseValue(int? value) {
//   if (value != null) {
//     value++;
//   } else {
//     value = 1;
//   }
//   print(value);
// }

// void increaseValue(int? value) {
//   value = value ?? 0;//null-coalescing operator
//   value++;
//   print(value);
// }
void increaseValue(int value) {
  value++;
  print(value);
}
