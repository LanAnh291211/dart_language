//  //mixin không có constructor nên không thể tạo đối tượng.
// mixin chỉ có thể sử dụng để implements hoặc with chứ không thể extends
// mixin có thể giới hạn những class nào được phép sử dụng code của mình bằng từ khóa mixin on
 class Dog {
 	bool isRun() {
 		return true;
 	}
 	
 	void sound() {
 		print('gâu gâu');
 	}
 }
 
 class Cat {
 	bool isClimb() {
 		return true;
 	}
 	
 	void sound() {
 		print('Meo meo');
 	}
 }
 
 class Chicken() {
 	bool isRunInWater() {
 		return true;
 	}
 	
 	void sound() {
 		print('cục tác');
 	}
 }
 
 mixin Mixin on Chicken {
 	
 	
 	bool isHaveWing() {
 		return true;
 	}
 }
 
 class Bird extends Dog with Cat, Chicken {}
 
 main() {
 	Bird myBird = Bird();
 	myBird.isRun(); // true
 	myBird.isClimb(); // true
 	myBird.isClimb(); // true
 	myBird.sound(); // This is a ship
 }