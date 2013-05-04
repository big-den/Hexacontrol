class Contrl // Класс элементов управления
{
  int val;
  int x, y;
  String txt;
  
  Contrl(int ix, int iy, int ival, String itxt) // Конструктор
  {
    x=ix;
    y=iy;
    val=ival;
    txt=itxt;
  }
  
  void display() // Отрисоква
  {
    fill(255);
    rect(x, y, 30, 15);
    rect(x+30, y, 15, 15);
    rect(x+45, y, 45, 15);
    rect(x+90, y, 15, 15);
    rect(x+105, y, 30, 15);
    textAlign(CENTER);
    fill(0);
    text("<<", x, y, 30, 15);
    text("<", x+30, y, 15, 15);
    text(str(val), x+45, y+1, 45, 15);
    text(">", x+90, y, 15, 15);
    text(">>", x+105, y, 30, 15);
    textAlign(LEFT);
    text(txt,x,y-13,135,15);
  }
  
  void click(int mx, int my) // Обработка нажатия мыши
  {
    if(my>=y && my<=y+15)
    {
      if(mx>=x && mx<=x+30) val-=10;
      if(mx>=x+30 && mx<=x+45) val--;
      if(mx>=x+90 && mx<=x+105) val++;
      if(mx>=x+105 && mx<=x+135) val+=10;
    }
  }  
}

