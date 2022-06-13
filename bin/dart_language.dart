//trong vài trường hợp việc tạo 1 class có vẻ dư thừa, thay vì tạo 1 class ta có tạo 1 extension trên(on) 1 kiểu dữ liệu

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

class Cat extends Pet {
  // use the 'super' keyword to interact with 
  // the super class of Cat
  Cat(String name, int age) : super(name, age);
  
  void sound() {
    print('meomeo');
  }
  
}


class Dog extends Pet {
  // use the 'super' keyword to interact with 
  // the super class of Cat
  Dog(String name, int age) : super(name, age);
  
  void sound() {
    print('meo');
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
