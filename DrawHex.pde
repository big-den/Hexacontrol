void DrawHex()
{
  int h, s, dy;
  float alf, bet;
  
  fill(200); // Отрисовка опорных линий
  stroke(255,0,0);
  strokeWeight(1);
  ellipse(840,220,388,388);
  ellipse(840,220,260,260);
  line(640,90,1040,90);
  line(640,110,1040,110);
  line(640,330,1040,330);
  line(640,350,1040,350);
  line(680,20,680,420);
  line(840,20,840,420);
  line(1000,20,1000,420);
  
  if(gait==0)
    fill(255); // Отрисовка гексапода
  else
    fill(128,0,0);
    
  stroke(0);
  strokeWeight(4);
  rect(740, 170, 200, 100); // Вид сверху
  
  line(740, 170, 740-Cdec[1].val, 170-Cdec[0].val); // Пер Прав
  line(740, 270, 740-Cdec[4].val, 270+Cdec[3].val); // Пер Лев
  line(840, 170, 840-Cdec[7].val, 170-Cdec[6].val); // Ср Прав
  line(840, 270, 840-Cdec[10].val, 270+Cdec[9].val); // Ср Лев
  line(940, 170, 940-Cdec[13].val, 170-Cdec[12].val); // Зад Прав
  line(940, 270, 940-Cdec[16].val, 270+Cdec[15].val); // Зад Лев
  
  stroke(100);
  line(740, 440, 940, 440); // Вид сбоку - правые ноги

  line(740, 440, 740, 472); // Пер Прав
  alf=float(Cang[0].val)/360*PI*2;
  bet=float(Cang[1].val)/360*PI*2;
  h=round(60*cos(bet));
  s=round(60*sin(bet));
  dy=round(s*cos(alf));
  line(740, 472, 740-dy, 472-h);
  line(740-dy, 472-h, 740-Cdec[1].val, 440-Cdec[2].val);
  
  line(840, 440, 840, 472); // Ср Прав
  alf=float(Cang[6].val)/360*PI*2;
  bet=float(Cang[7].val)/360*PI*2;
  h=round(60*cos(bet));
  s=round(60*sin(bet));
  dy=round(s*cos(alf));
  line(840, 472, 840-dy, 472-h);
  line(840-dy, 472-h, 840-Cdec[7].val, 440-Cdec[8].val);
  
  line(940, 440, 940, 470); // Эад Прав
  alf=float(Cang[12].val)/360*PI*2;
  bet=float(Cang[13].val)/360*PI*2;
  h=round(60*cos(bet));
  s=round(60*sin(bet));
  dy=round(s*cos(alf));
  line(940, 472, 940-dy, 472-h);
  line(940-dy, 472-h, 940-Cdec[13].val, 440-Cdec[14].val);

  stroke(0);
  line(740, 440, 940, 440); // Вид сбоку - левые ноги
  
  line(740, 440, 740, 472); // Пер Лев
  alf=float(Cang[3].val)/360*PI*2;
  bet=float(Cang[4].val)/360*PI*2;
  h=round(60*cos(bet));
  s=round(60*sin(bet));
  dy=round(s*cos(alf));
  line(740, 472, 740-dy, 472-h);
  line(740-dy, 472-h, 740-Cdec[4].val, 440-Cdec[5].val);

  line(840, 440, 840, 472); // Ср Лев
  alf=float(Cang[9].val)/360*PI*2;
  bet=float(Cang[10].val)/360*PI*2;
  h=round(60*cos(bet));
  s=round(60*sin(bet));
  dy=round(s*cos(alf));
  line(840, 472, 840-dy, 472-h);
  line(840-dy, 472-h, 840-Cdec[10].val, 440-Cdec[11].val);
  
  line(940, 440, 940, 472); // Зад Лев
  alf=float(Cang[15].val)/360*PI*2;
  bet=float(Cang[16].val)/360*PI*2;
  h=round(60*cos(bet));
  s=round(60*sin(bet));
  dy=round(s*cos(alf));
  line(940, 472, 940-dy, 472-h);
  line(940-dy, 472-h, 940-Cdec[16].val, 440-Cdec[17].val);
  
  strokeWeight(1);

}
