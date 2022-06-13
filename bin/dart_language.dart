abstract class Abtract {
    // Creating Abstract Methods
    void think();
    void act();
}
 
class AbtractExample extends Abtract{
    @override
    void think()
    {
        print("Hate");
    }
 
    @override
    void act()
    {
        print("Love");
    }
}
void main() {
   AbtractExample abtract = new AbtractExample();
    abtract.think();
    abtract.act();
}