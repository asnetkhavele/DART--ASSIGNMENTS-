void main() {
  // Define Variables
  int age = 25;
  double height = 5.9;
  String name = "Alice";
  bool isStudent = true;
  List<int> scores = [85, 90, 78, 92];
  
  print('Age: $age');
  print('Height: $height');
  print('Name: $name');
  print('Is Student: $isStudent');
  print('Scores: $scores');

  // Type Conversion
  int stringToInt(String value) => int.parse(value);
  double stringToDouble(String value) => double.parse(value);
  String intToString(int value) => value.toString();
  double intToDouble(int value) => value.toDouble();

  void convertAndDisplay(String numberStr) {
    int numberInt = stringToInt(numberStr);
    double numberDouble = stringToDouble(numberStr);

    print('String to int: $numberInt');
    print('String to double: $numberDouble');
  }

  convertAndDisplay("42");

  // Control Flow with If-Else and Switch Case
  int number = -5;

  if (number > 0) {
    print('The number is positive.');
  } else if (number < 0) {
    print('The number is negative.');
  } else {
    print('The number is zero.');
  }

  int ageForVoting = 20;
  if (ageForVoting >= 18) {
    print('You are eligible to vote.');
  } else {
    print('You are not eligible to vote.');
  }

  int day = 3;
  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid day');
  }

  // Implement Loops
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  int countdown = 10;
  while (countdown > 0) {
    print(countdown);
    countdown--;
  }

  int doWhileCounter = 1;
  do {
    print(doWhileCounter);
    doWhileCounter++;
  } while (doWhileCounter <= 5);

  // Combining Data Types and Control Flow
  List<int> numbers = [3, 8, 15, 22, 99];
  
  for (int num in numbers) {
    print('Number: $num');

    if (num % 2 == 0) {
      print('The number is even.');
    } else {
      print('The number is odd.');
    }

    switch (num) {
      case int n when n >= 1 && n <= 10:
        print('The number is small.');
        break;
      case int n when n > 10 && n <= 100:
        print('The number is medium.');
        break;
      default:
        print('The number is large.');
    }
  }
}
