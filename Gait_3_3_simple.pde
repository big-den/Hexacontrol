void Gait_3_3_simple(int step_lentgh)
{
  int i;
  if(start_scen==1)
    switch(scen)
    {
      case 1:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;
        end_coor[5]=-70;
        end_coor[8]=-70;
        end_coor[17]=-70;
        break;
    }
  switch (scen)
  {
    case 1:
      Go_sc(200, 0);
      break;
  }
  if(scen==0) 
    gait=0;  
}

