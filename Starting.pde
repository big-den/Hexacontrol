void Starting()
{
  int i;
  if(start_scen==1)
    switch(scen)
    {
      case 1:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;
        end_coor[0]=60;
        end_coor[1]=60;
        end_coor[3]=60;
        end_coor[4]=60;
        end_coor[6]=80;
        end_coor[7]=0;
        end_coor[9]=80;
        end_coor[10]=0;
        end_coor[12]=60;
        end_coor[13]=-60;
        end_coor[15]=60;
        end_coor[16]=-60;
        break;
        
      case 2:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;
        end_coor[2]=-100;
        end_coor[5]=-100;
        end_coor[8]=-100;
        end_coor[11]=-100;
        end_coor[14]=-100;
        end_coor[17]=-100;
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
