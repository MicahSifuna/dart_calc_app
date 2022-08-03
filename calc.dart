import 'dart:io';

class Calculator {
  // Create variables for num 1 and num 2
  double num1 = 0.0;
  double num2 = 0.0;

  // constructor
  Calculator(double firstNumber, double secondNumber) {
    this.num1 = firstNumber;
    this.num2 = secondNumber;
  }

  // Methods
  // 1. Add
  // 2. Subtract
  // 3. Multiply
  // 4. Divide

  double add(double firstNumber, double secondNumber) {
    return firstNumber + secondNumber;
  }

  double subtract(double firstNumber, double secondNumber) {
    return firstNumber - secondNumber;
  }

  double multiply(double firstNumber, double secondNumber) {
    return firstNumber * secondNumber;
  }

  double divide(double firstNumber, double secondNumber) {
    return firstNumber / secondNumber;
  }

  static void start() {
    print("\n Welcome to your dart calculator\nPlease type your first number");
    String firstInput = stdin.readLineSync() ?? '0';
    double firstNumber = 0.0;
    if (firstInput != "") {
      firstNumber = double.parse(firstInput);
    }
    print("Enter the second number");
    String secondInput = stdin.readLineSync() ?? '0';
    double secondNumber = 0.0;
    if (secondInput != "") {
      secondNumber = double.parse(secondInput);
    }

    Calculator calc = Calculator(firstNumber, secondNumber);

    print("Choose the operation that you want");
    print("""\nType + for addition
    \nType - for subtraction
    \nType * for multiplication
    \nType / for division""");

    String operation = stdin.readLineSync().toString();

    if (operation == "+") {
      print(
          "\n${calc.num1} + ${calc.num2} = ${calc.add(calc.num1, calc.num2)}");
    } else if (operation == "-") {
      print(
          "\n${calc.num1} - ${calc.num2} = ${calc.subtract(calc.num1, calc.num2)}");
    } else if (operation == "*") {
      print(
          "\n${calc.num1} * ${calc.num2} = ${calc.multiply(calc.num1, calc.num2)}");
    } else if (operation == "/") {
      print(
          "\n${calc.num1} / ${calc.num2} = ${calc.divide(calc.num1, calc.num2)}");
    } else {
      print("\nInvalid operator");
    }
  }
}
