void Freestyle(int step_lentgh)
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
       
        end_coor[11]=-100-cor;
        
        break;
      case 2:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;
        end_coor[4]=end_coor[4]+step_lentgh;
        end_coor[5]=-100;
        end_coor[7]=end_coor[7]+step_lentgh;
        end_coor[8]=-100;
        end_coor[16]=end_coor[16]+step_lentgh;
        end_coor[17]=-100;
        end_coor[1]=end_coor[1]-step_lentgh;
        end_coor[10]=end_coor[10]-step_lentgh;
        end_coor[13]=end_coor[13]-step_lentgh;
        
        end_coor[11]=-100;
        
        break;
      case 3:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;
        end_coor[1]=end_coor[1]+step_lentgh;
        end_coor[2]=-70;
        end_coor[10]=end_coor[10]+step_lentgh;
        end_coor[11]=-70;
        end_coor[13]=end_coor[13]+step_lentgh;
        end_coor[14]=-70;
        end_coor[4]=end_coor[4]-step_lentgh;
        end_coor[7]=end_coor[7]-step_lentgh;
        end_coor[16]=end_coor[16]-step_lentgh;
        
        end_coor[8]=-100-cor;
        
        break;
      case 4:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;
        end_coor[1]=end_coor[1]+step_lentgh;
        end_coor[2]=-100;
        end_coor[10]=end_coor[10]+step_lentgh;
        end_coor[11]=-100;
        end_coor[13]=end_coor[13]+step_lentgh;
        end_coor[14]=-100;
        end_coor[4]=end_coor[4]-step_lentgh;
        end_coor[7]=end_coor[7]-step_lentgh;
        end_coor[16]=end_coor[16]-step_lentgh;
        
        end_coor[8]=-100;
        
        break;
      case 5:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;
        end_coor[4]=end_coor[4]+step_lentgh;
        end_coor[5]=-70;
        end_coor[7]=end_coor[7]+step_lentgh;
        end_coor[8]=-70;
        end_coor[16]=end_coor[16]+step_lentgh;
        end_coor[17]=-70;
        end_coor[1]=end_coor[1]-step_lentgh;
        end_coor[10]=end_coor[10]-step_lentgh;
        end_coor[13]=end_coor[13]-step_lentgh;
        
        end_coor[11]=-100-cor;
        
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
