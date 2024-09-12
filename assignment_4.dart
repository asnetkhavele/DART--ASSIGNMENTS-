// assignment_4.dart

import 'dart:io';
import 'dart:convert'; // For JSON encoding
import 'dart:core';

// String Manipulation

void stringManipulation() {
  String text = "Hello, Dart!";
  
  // String concatenation
  String concatenated = text + " Let's learn more.";
  print("Concatenated String: $concatenated");

  // String interpolation
  String interpolated = "The message is: $text";
  print(interpolated);

  // Substring extraction
  String substring = text.substring(7, 11);
  print("Substring: $substring");

  // Case conversion
  String upperCase = text.toUpperCase();
  String lowerCase = text.toLowerCase();
  print("Uppercase: $upperCase");
  print("Lowercase: $lowerCase");

  // Reverse a string
  String reversed = text.split('').reversed.join('');
  print("Reversed String: $reversed");

  // Count length of a string
  int length = text.length;
  print("Length of String: $length");
}

// Collections (Lists, Sets, Maps)

void collectionsDemo() {
  // List
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  fruits.add('Date');
  fruits.remove('Banana');
  print("List of Fruits: $fruits");

  // Set
  Set<int> numbers = {1, 2, 3, 4};
  numbers.add(5);
  numbers.remove(3);
  print("Set of Numbers: $numbers");

  // Map
  Map<String, String> capitals = {
    'USA': 'Washington, D.C.',
    'France': 'Paris',
    'Germany': 'Berlin'
  };
  capitals['Spain'] = 'Madrid';
  capitals.remove('Germany');
  print("Map of Capitals: $capitals");
}

// File Handling

void fileHandlingDemo() {
  String inputFilePath = 'input.txt';
  String outputFilePath = 'output.txt';
  
  // Read from a file
  try {
    String content = File(inputFilePath).readAsStringSync();
    print("File Content: $content");
    
    // Write to another file
    File(outputFilePath).writeAsStringSync("Processed content: $content");
    print("Data written to $outputFilePath");
  } catch (e) {
    print("Error: $e");
  }
}

// Date and Time

void dateTimeDemo() {
  DateTime now = DateTime.now();
  print("Current Date and Time: $now");

  // Format date
  String formattedDate = "${now.year}-${now.month}-${now.day}";
  print("Formatted Date: $formattedDate");

  // Parse date
  DateTime parsedDate = DateTime.parse("2024-09-15");
  print("Parsed Date: $parsedDate");

  // Manipulate date
  DateTime futureDate = now.add(Duration(days: 5));
  print("Date 5 Days Later: $futureDate");

  // Difference between two dates
  DateTime earlierDate = DateTime(2024, 9, 1);
  Duration difference = now.difference(earlierDate);
  print("Difference in Days: ${difference.inDays} days");
}

// Combine all functionalities into a small application

void combinedApplication() {
  // Perform string manipulation on user input
  print("Enter a string:");
  String userInput = stdin.readLineSync() ?? '';
  
  print("Original Input: $userInput");
  
  String reversedInput = userInput.split('').reversed.join('');
  print("Reversed Input: $reversedInput");
  
  // Store results in a collection (List)
  List<String> results = [userInput, reversedInput];
  
  // Save the data to a file
  String filePath = 'user_data.txt';
  File(filePath).writeAsStringSync(jsonEncode(results));
  print("Data saved to $filePath");
  
  // Log the date and time
  DateTime logTime = DateTime.now();
  File('log.txt').writeAsStringSync('Data processed at: $logTime');
  print("Log written to log.txt");
}

void main() {
  print("String Manipulation:");
  stringManipulation();
  
  print("\nCollections Demo:");
  collectionsDemo();
  
  print("\nFile Handling Demo:");
  fileHandlingDemo();
  
  print("\nDate and Time Demo:");
  dateTimeDemo();
  
  print("\nCombined Application:");
  combinedApplication();
}
