import processing.serial.*;

Contrl[] Cang, Cdec; // Глобальные переменные
Kinematics Kinem;
Serial myPort;
int[] Pang, Pdec;
Contrl[] FP;
int gait=0, scen=0, start_scen=0, millis_start, dmillis, cur_millis;
int[] dcoor, start_coor, end_coor;

boolean enable_comm=false;

void setup()
{
  int i,j,k;
  String[] names={"Coxa", "Femur", "Tibia"};
  String[] namesx={"X", "Y", "Z"};
  String[] namesfp={"Прямо QW", "Поворот AS", "Стрейф ZX", "Скорость ER", "Высота DF", "Высота шага CV", "Поддержка TY", "Крен GH", "Тангаж BN"};
  String[] capt=new String[3];
  size(1300,550);
  if(enable_comm)
  {
    String portName = Serial.list()[0];
    println(portName);
    myPort = new Serial(this, portName, 57600);
    
  }
  Cang=new Contrl[18];
  Cdec=new Contrl[18];
  FP=new Contrl[9];
  Pang=new int[18];
  Pdec=new int[18];
  dcoor=new int[18];
  start_coor=new int[18];
  end_coor=new int[18];
  for(i=0; i<3; i++) // Объявление элементов управления обобщенными координатами
    for(j=0; j<2; j++)
      for(k=0; k<3; k++)
      {
        capt[0]=nf(i*2+j+1,0);
        capt[1]=": ";
        capt[2]=names[k];
        Cang[i*6+j*3+k]=new Contrl(20+i*165,20+j*105+k*30,0,join(capt,""));
      }
  for(i=0; i<3; i++) // Объявление элементов управления декартовыми координатами
    for(j=0; j<2; j++)
      for(k=0; k<3; k++)
      {
        capt[0]=nf(i*2+j+1,0);
        capt[1]=": ";
        capt[2]=namesx[k];
        Cdec[i*6+j*3+k]=new Contrl(20+i*165,250+j*105+k*30,0,join(capt,""));
      }
  for(i=0; i<18; i++)
    {
      Pdec[i]=0;
      Pang[i]=0;
    }
  
  Kinem=new Kinematics(90, 90, 90);
  
  for(i=0;i<6;i++)
  {
    Cang[i*3].val=90;
    Cang[i*3+1].val=20;
    Cang[i*3+2].val=90;
  } 
  
  for(i=0;i<9;i++)
    FP[i]=new Contrl(1100,i*40+20,0,namesfp[i]);
    
  FP[3].val=200;
  FP[4].val=100;
  FP[5].val=30;
  FP[6].val=10;
    
 
}

void draw()
{
  int i,j,k;
  
  Moving();

  for(i=0; i<6; i++) // Расчет прямой кинематики
    for(j=0; j<3; j++)
      if(Cang[i*3+j].val!=Pang[i*3+j])
      {
        for(k=0; k<3; k++)
          Kinem.ang[k]=Cang[i*3+k].val;
        Kinem.FK();
        
        for(k=0; k<3; k++)
        {
          Cdec[i*3+k].val=Kinem.dec[k];
          Pang[i*3+k]=Cang[i*3+k].val;
          Pdec[i*3+k]=Cdec[i*3+k].val;
        }
        Comm(i*3+j);
      }        
      

  for(i=0; i<6; i++) // Расчет инверсной кинематики
    for(j=0; j<3; j++)
      if(Cdec[i*3+j].val!=Pdec[i*3+j])
      {
        for(k=0; k<3; k++)
          Kinem.dec[k]=Cdec[i*3+k].val;
        Kinem.IK();
        for(k=0; k<3; k++)
        {
          Cang[i*3+k].val=Kinem.ang[k];
          Pang[i*3+k]=Cang[i*3+k].val;
          Pdec[i*3+k]=Cdec[i*3+k].val;
          Comm(i*3+k);
        }
      }        

  
  background(200); // Начало блока отрисовки

  for(i=0; i<18; i++) // Отрисовка элементов управления
    {
      Cang[i].display();
      Cdec[i].display();
    }
  
  for(i=0;i<9;i++)
    FP[i].display();
  
  DrawBut(); // Отрисовка кнопок
  DrawHex(); // Отрисовка гексапода

}






