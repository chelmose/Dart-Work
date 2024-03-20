
abstract class Animal {
  void sound();
}


class Dog implements Animal {
  String name;

  Dog(this.name);

  
  @override
  void sound() {
    print('Woof!');
  }
}


class Bulldog extends Dog {
  Bulldog(String name) : super(name);

  
  @override
  void sound() {
    print('Woof! Woof!');
  }
}


Bulldog initializeDogFromFile(String fileName) {
  
  String name = 'Buddy'; 
  
  return Bulldog(name);
}


void printSounds(Animal animal) {
  for (int i = 0; i < 3; i++) {
    animal.sound();
  }
}


void main() {
  
  Bulldog myDog = initializeDogFromFile('dog_data.txt');

  
  print('My dog says:');
  myDog.sound();

  
  print('But, here\'s a few times:');
  printSounds(myDog);
}