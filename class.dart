class Dog {
  // Properties/attributes
  String breed;
  String color;
  String origin;

  // Constructor
  Dog(this.breed, this.color, this.origin);

  // Methods/behaviours
  void bark() {
    print('Woof!');
  }

  void run() {
    print('The dog is running.');
  }
}

void main() {
  // Creating an instance of the Dog class/object
  var myDog = Dog('Labrador', 'Golden', 'Siberian');

  // Accessing properties/attributes/characteristics
  print('Breed: ${myDog.breed}');
  print('Color: ${myDog.color}');
  print('Origin:${myDog.origin}');

  // Calling methods
  myDog.bark();
  myDog.run();
}
