// oop_assignment.dart

// Encapsulation Example: Person Class
class Person {
  String _name; // Private variable
  int _age;     // Private variable

  // Constructor
  Person(this._name, this._age);

  // Getter for name
  String get name => _name;

  // Getter for age
  int get age => _age;

  // Method to display person details
  void displayInfo() {
    print('Name: $_name, Age: $_age');
  }
}

// Inheritance Example: Employee Subclass
class Employee extends Person {
  double _salary; // Additional property for Employee

  // Constructor
  Employee(String name, int age, this._salary) : super(name, age);

  // Getter for salary
  double get salary => _salary;

  // Method to display employee details
  @override
  void displayInfo() {
    super.displayInfo();
    print('Salary: \$$_salary');
  }
}

// Polymorphism Example: Manager Subclass
class Manager extends Employee {
  String _department; // Additional property for Manager

  // Constructor
  Manager(String name, int age, double salary, this._department)
      : super(name, age, salary);

  // Getter for department
  String get department => _department;

  // Method to display manager details
  @override
  void displayInfo() {
    super.displayInfo();
    print('Department: $_department');
  }
}

// Abstraction Example: Abstract Class and Subclass
abstract class Animal {
  // Abstract method that must be implemented by subclasses
  void makeSound();
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof! Woof!');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow! Meow!');
  }
}

// Main function to demonstrate all OOP concepts
void main() {
  // Test Encapsulation and Inheritance
  Person person = Person('Alice', 30);
  person.displayInfo();

  Employee employee = Employee('Bob', 40, 50000);
  employee.displayInfo();

  Manager manager = Manager('Carol', 50, 70000, 'HR');
  manager.displayInfo();

  // Test Polymorphism and Abstraction
  Animal myDog = Dog();
  myDog.makeSound();

  Animal myCat = Cat();
  myCat.makeSound();
}
