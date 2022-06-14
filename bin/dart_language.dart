class Pet {
String id;
String name;

Pet({required this.id, required this.name});

// factory constructor trả về new instance
factory Pet.fromJson(Map json) {
return Pet(id : json['id'],
name : json['name']);
}
}

void main(){

Map dog = {'id': '1', 'name': 'lu'};

Pet lu = Pet.fromJson(dog);
print(lu.id);
print(lu.name);

}