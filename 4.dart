class Dog{
  int age;
  String type;
  String name;
  int size;
  Dog(String name,String type,[int age = 5,int size = 10]){
    this.name = name;
    this.type = type;
    this.age = age;
    this.size = size;  
  }
  dogPrint(){
    print(this.age);
  }
  
  bark(String text){
    print("หมาชื่อ $name พันธ์ $type อายุ $age เห่าว่า $text");
  }
}

class SmallDog extends Dog{
  SmallDog(String name,String type,[int age = 5,int size = 10]):super(name,type,age,size);
  static const int MAX_BODY_SIZE = 30;
  void runAway(){
    print("I am running");
  }
  bool isSmall() => MAX_BODY_SIZE > this.size? false : true;
}

void main(){
  var a = Dog("Marr","thai");
  a.bark("hello");
  
  var b = SmallDog("zz","ww");
  b.runAway();
  print(b.isSmall());
}