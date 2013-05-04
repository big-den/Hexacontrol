void Strafe(int step_lentgh)
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
      case 2:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;
        end_coor[3]=end_coor[3]+step_lentgh;
        end_coor[5]=-100;
        end_coor[6]=end_coor[6]-step_lentgh;
        end_coor[8]=-100;
        end_coor[15]=end_coor[15]+step_lentgh;
        end_coor[17]=-100;
        end_coor[0]=end_coor[0]+step_lentgh;
        end_coor[9]=end_coor[9]-step_lentgh;
        end_coor[12]=end_coor[12]+step_lentgh;
        break;
      case 3:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;
        end_coor[0]=end_coor[0]-step_lentgh;
        end_coor[2]=-70;
        end_coor[9]=end_coor[9]+step_lentgh;
        end_coor[11]=-70;
        end_coor[12]=end_coor[12]-step_lentgh;
        end_coor[14]=-70;
        end_coor[3]=end_coor[3]-step_lentgh;
        end_coor[6]=end_coor[6]+step_lentgh;
        end_coor[15]=end_coor[15]-step_lentgh;
        break;
      case 4:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;
        end_coor[0]=end_coor[0]-step_lentgh;
        end_coor[2]=-100;
        end_coor[9]=end_coor[9]+step_lentgh;
        end_coor[11]=-100;
        end_coor[12]=end_coor[12]-step_lentgh;
        end_coor[14]=-100;
        end_coor[3]=end_coor[3]-step_lentgh;
        end_coor[6]=end_coor[6]+step_lentgh;
        end_coor[15]=end_coor[15]-step_lentgh;
        break;
      case 5:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;
        end_coor[3]=end_coor[3]+step_lentgh;
        end_coor[5]=-70;
        end_coor[6]=end_coor[6]-step_lentgh;
        end_coor[8]=-70;
        end_coor[15]=end_coor[15]+step_lentgh;
        end_coor[17]=-70;
        end_coor[0]=end_coor[0]+step_lentgh;
        end_coor[9]=end_coor[9]-step_lentgh;
        end_coor[12]=end_coor[12]+step_lentgh;
        break;
   }
  switch (scen)
  {
    case 1:
      Go_sc(200, 2);
      break;
    case 2:
      Go_sc(200, 3);
      break;
    case 3:
      Go_sc(200, 4);
      break;
    case 4:
      Go_sc(200, 5);
      break;
    case 5:
      Go_sc(200, 2);
      break;
  }
  if(scen==0) 
    gait=0;  
}
