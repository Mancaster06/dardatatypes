import 'dart:convert';
import 'dart:io';

// Base class representing an animal
class Animal {
  String name;
  String sound;

  Animal(this.name, this.sound);

  void makeSound() {
    print('$name makes a $sound sound.');
  }
}

// Derived class Dog
class Dog extends Animal {
  Dog(String name) : super(name, 'bark');
}

// Derived class Cat
class Cat extends Animal {
  Cat(String name) : super(name, 'meow');

  @override
  void makeSound() {
    print('$name purrs softly.');
  }
}

// Interface for swimmers
abstract class Swimmer {
  void swim();
}

// Duck class implementing Swimmer interface
class Duck extends Animal implements Swimmer {
  Duck(String name) : super(name, 'quack');

  @override
  void swim() {
    print('$name is swimming gracefully.');
  }
}

void main() {

  final fileContents = File('animals.json').readAsStringSync();
  final jsonData = json.decode(fileContents);

  for (var animalData in jsonData) {
    final name = animalData['name'];
    final type = animalData['type'];

    switch (type) {
      case 'Dog':
        final dog = Dog(name);
        dog.makeSound();
        break;
      case 'Cat':
        final cat = Cat(name);
        cat.makeSound();
        break;
      case 'Duck':
        final duck = Duck(name);
        duck.makeSound();
        duck.swim();
        break;
      default:
        print('Unknown animal type: $type');
    }
  }
}
