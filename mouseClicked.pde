void mouseClicked() // Прерывание по нажатию мыши
{
  int i, xx, yy;
  xx=mouseX;
  yy=mouseY;
  for(i=0; i<18; i++) // Вызов обработки нажатия элементов управления
  {
    Cang[i].click(xx,yy);
    Cdec[i].click(xx,yy);
  } 
  for(i=0;i<9;i++)
    FP[i].click(xx,yy);
  
  if(xx>500&&xx<620&&yy>500&&yy<530) 
      {gait=1; start_scen=1; scen=1;}
  if(xx>500&&xx<620&&yy>450&&yy<480) 
      {gait=2; start_scen=1; scen=1;}
  if(xx>20&&xx<120&&yy>450&&yy<480) 
      {gait=3; start_scen=1; scen=1;}
  if(xx>20&&xx<120&&yy>500&&yy<530) 
      {gait=4; start_scen=1; scen=1;}
  if(xx>140&&xx<240&&yy>450&&yy<480) 
      {gait=5; start_scen=1; scen=1;}
  if(xx>140&&xx<240&&yy>500&&yy<530) 
      {gait=6; start_scen=1; scen=1;}
  if(xx>260&&xx<360&&yy>450&&yy<480) 
      {gait=7; start_scen=1; scen=1;}
  if(xx>260&&xx<360&&yy>500&&yy<530) 
      {gait=8; start_scen=1; scen=1;}
  if(xx>380&&xx<480&&yy>450&&yy<480) 
      {gait=9; start_scen=1; scen=1;}
  if(xx>380&&xx<480&&yy>500&&yy<530) 
      {gait=10; start_scen=1; scen=1;}
  if(xx>1100&&xx<1235&&yy>450&&yy<480) 
      {gait=11; start_scen=1; scen=1;}
}
