void main(){
  print(rectangle1(2,2));
  print(named_rectangle(h:5,w:5));
  print(rectangle2(3,3));
}

int rectangle1 (int h,[int w]){
  return h*(w??h);
}



int named_rectangle ({int h,int w}) => h*w;

int rectangle2 (int h,[int w]) => h*(w??h);