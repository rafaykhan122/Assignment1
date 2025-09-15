import 'dart:io';

void main() {
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;
  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);

  if (age < 18) {
    print("Sorry $name, you are not eligible to register.");
    return;
  }
  stdout.write("How many numbers  you want to enter? ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];
  for (int i = 0; i < n; i++) {
    stdout.write("Enter the number ${i + 1}: ");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  int evenSum = 0, oddSum = 0;
  for (int num in numbers) {
    if (num % 2 == 0) {
      evenSum += num;
    } else {
      oddSum += num;
    }
  }
  int largest = numbers.reduce((a, b) => a > b ? a : b);
  int smallest = numbers.reduce((a, b) => a < b ? a : b);

  print("\n--- Results are ---");
  print("Sum of Even numbers: $evenSum");
  print("Sum of Odd numbers: $oddSum");
  print("Largest Number: $largest");
  print("Smallest Number: $smallest");
}
