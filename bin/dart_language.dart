//trong vài trường hợp việc tạo 1 class có vẻ dư thừa, thay vì tạo 1 class ta có tạo 1 extension 
//là một cách để thêm chức năng vào các thư viện hiện có
// extension <'Tên Extension'> on <'Class cần extends'> {}
extension Extensions on String {
  String concat(String word) => '$this $word';

  // DOCUMENTATION IS SUPPORTED: Concatenates two strings with a space in between.

}
class Pet {
  Pet(this.name, this.id);
  
  int id;
  String name;

  void sound() {
    print('gaugau');
  }
}
//class Cat kế thừa class Pet
class Cat extends Pet {
  // use the 'super' keyword to interact with 
  // the super class of Cat
  Cat(String name, int id) : super(name, id);
  
  void sound() {
    print('meomeo');
  }
  
}

//class Dog kế thừa class Pet
class Dog extends Pet {
  
  Dog(String name, int id) : super(name, id);
  
  void sound() {
    print('grugru');
  }
  
}


main() {

  String one = 'dog';
  one.concat('cat');
   var cat = Cat("Miu",1);
  var dog = Dog("Nick", 2);
  
  dog.sound();
  cat.sound();
}
