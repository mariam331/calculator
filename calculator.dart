import 'dart:io';

class Calculator {
  double add(double x, double y) => x + y;
  double subtract(double x, double y) => x - y;
  double multiply(double x, double y) => x * y;
  double divide(double x, double y) => x / y;

  void run() {
    while (true) {
      stdout.write('Enter an operation (+, -, *, /, q): ');
      String operation = stdin.readLineSync()!;
      if (operation == 'q') {
        break;
      }
      try {
        stdout.write('Enter the first operand: ');
        double x = double.parse(stdin.readLineSync()!);
        stdout.write('Enter the second operand: ');
        double y = double.parse(stdin.readLineSync()!);
        double result;
        switch (operation) {
          case '+':
            result = add(x, y);
            break;
          case '-':
            result = subtract(x, y);
            break;
          case '*':
            result = multiply(x, y);
            break;
          case '/':
            result = divide(x, y);
            break;
          default:
            throw Exception('Invalid operation');
        }
        print('Result: $result');
      } catch (e) {
        print('Error');
      }
    }
  }
}

void main() {
  Calculator().run();
}