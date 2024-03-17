import 'dart:io';

void main() {
  // Prompt the user to enter a number
  print('Enter a number:');

  // Read user input from the console
  String? input = stdin.readLineSync();

  // Remove any leading or trailing whitespace
  input = input!.trim();

  // Convert the input to an integer
  int? number = int.tryParse(input);

  // Check if the conversion was successful
  if (number != null) {
    // Compare the number with 10 and print the appropriate message
    if (number > 10) {
      print('Your number is greater than 10');
    } else if (number < 10) {
      print('Your number is less than 10');
    } else {
      print('Your number is equal to 10');
    }
  } else {
    // If the input couldn't be converted to an integer, print an error message
    print('Invalid input. Please enter a valid number.');
  }
}
