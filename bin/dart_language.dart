
// Constructor là một hàm đặc biệt của lớp, được sử dụng để tạo ra đối tượng và khởi tạo các giá trị cho các trường (field).
class Human {
  String id;
  String name;
  String age;

  // Constructor:
  Human(String n, String g, String c)
      : id = n,
        name = g,
        age = c {
    // (Constructor body)
   
  }

  // Method:
  void Introduce() {
    print('Hi, ma so: $id,ten: $name, tuoi: $age');
  }
}

void main()  {
   Human lan = new Human('1', 'lan', '12'); // tạo đối tượng
   lan.Introduce(); // Call method.

   Human nga = Human('2', 'nga', '13'); // tạo đối tượng
   nga.Introduce();

   var hong = Human('3', 'hong', '14'); // tạo đối tượng
   hong.Introduce();
}
