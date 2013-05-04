void Park()
{
  int i;
  if(start_scen==1)
    switch(scen)
    {
      case 1:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;
        for(i=0; i<6; i++)
        {
           end_coor[2+i*3]=0;
        }
      break;

      case 2:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;
        for(i=0; i<6; i++)
        {
           end_coor[0+i*3]=130;
           end_coor[1+i*3]=7;
        }
      break;
    }
  switch (scen)
  {
    case 1:
      Go_sc(500, 2);
      break;
    case 2:
      Go_sc(500, 0);
      break;
  }
  if(scen==0) 
    gait=0;  
}
