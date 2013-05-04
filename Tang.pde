void Tang(int step_lentgh)
{
  int i;
  if(start_scen==1)
    switch(scen)
    {
      case 1:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;
        end_coor[2]=-100+step_lentgh;
        end_coor[5]=-100+step_lentgh;
        end_coor[14]=-100-step_lentgh;
        end_coor[17]=-100-step_lentgh;
        break;
      case 2:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;
        end_coor[2]=-100-step_lentgh;
        end_coor[5]=-100-step_lentgh;
        end_coor[14]=-100+step_lentgh;
        end_coor[17]=-100+step_lentgh;
        break;
   }
  switch (scen)
  {
    case 1:
      Go_sc(500, 2);
      break;
    case 2:
      Go_sc(500, 1);
      break;
  }
  if(scen==0) 
    gait=0;  
}
