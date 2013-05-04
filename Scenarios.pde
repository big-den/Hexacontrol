void Moving()
{
  switch(gait)
  {
    case 1:
      Start_pos();
      break;
    case 2:
      Park();
      break;
    case 3:
      Gait_3_3_simple(20);
      break;
    case 4:
      Gait_3_3_smooth(20);
      break;
    case 5:
      Turn(10);
      break;
    case 6:
      Strafe(30);
      break;
    case 7:
      Kren(30);
      break;
    case 8:
      Tang(30);
      break;
    case 9:
      UpDown(30);
      break;
    case 10:
      Starting();
      break;
    case 11:
      Freestyle(5);
      break;

  }
}

void Go_sc(int scdur, int nxt)
{
  int i;
  if(start_scen==1)
  {
    start_scen=0;
    millis_start=millis();
    dmillis=scdur;
    for(i=0; i<18; i++)
    {
      start_coor[i]=Cdec[i].val;
      dcoor[i]=end_coor[i]-start_coor[i];
    }
  }
  cur_millis=millis()-millis_start;
  if(cur_millis>dmillis)
  {
    scen=nxt;
    start_scen=1;
    cur_millis=dmillis;
  }
  for(i=0; i<18; i++)
    Cdec[i].val=start_coor[i]+int(dcoor[i]*cur_millis/dmillis);
}







