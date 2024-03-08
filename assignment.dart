int addTwo(int a, int b) {
  return a + b;
}

int subtractTwo(int number1, int number2) {
  return number1 - number2;
}

double multiplyTwo(double a, double b) {
  return a * b;
}

double divideTwo(double a, double b) {
  if (b != 0) {
    return a / b;
  } else {
    throw Exception("Cannot divide by zero.");
  }
}

int stringLength(String str) {
  return str.length;
}

dynamic getFirstElement(List<dynamic> myList) {
  if (myList.isNotEmpty) {
    return myList[0];
  } else {
    throw Exception("List is empty.");
  }
}
