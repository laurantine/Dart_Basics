extension StringExtensions on String {
  bool toBool() {
    return isNotEmpty;
  }
}

void testExtension() {
  String emptyString = "";
  String nonEmptyString = "Hello extensions!";
  print(emptyString.toBool());
  print(nonEmptyString.toBool());
}

void main() {
  testExtension();
}

//Extensions allow you to add methods and properties 
//to existing classes, without modifying the original 
//class.
