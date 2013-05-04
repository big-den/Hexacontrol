int wdt=50, lng=100;

void Turn(int ang)
{
  int i;
  int xcoor, ycoor;
  float rcoor, alfcoor;
  
  if(start_scen==1)
    switch(scen)
    {
      case 1:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;
        end_coor[2]=-70;
        end_coor[11]=-70;
        end_coor[14]=-70;
        break;
      case 2:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;

        xcoor=wdt+end_coor[0];
        ycoor=lng+end_coor[1];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor-float(ang)/360*PI;
        end_coor[0]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[1]=round(rcoor*sin(alfcoor))-lng;
        end_coor[2]=-100;

        xcoor=wdt+end_coor[3];
        ycoor=lng+end_coor[4];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor-float(ang)/360*PI;
        end_coor[3]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[4]=round(rcoor*sin(alfcoor))-lng;
        end_coor[5]=-100;

        xcoor=wdt+end_coor[6];
        ycoor=end_coor[7];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor+float(ang)/360*PI;
        end_coor[6]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[7]=round(rcoor*sin(alfcoor));
        end_coor[8]=-100;

        xcoor=wdt+end_coor[9];
        ycoor=end_coor[10];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor+float(ang)/360*PI;
        end_coor[9]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[10]=round(rcoor*sin(alfcoor));
        end_coor[11]=-100;
 
        xcoor=wdt+end_coor[12];
        ycoor=-lng+end_coor[13];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor+float(ang)/360*PI;
        end_coor[12]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[13]=-round(rcoor*sin(alfcoor))+lng;
        end_coor[14]=-100;

        xcoor=wdt+end_coor[15];
        ycoor=-lng+end_coor[16];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor+float(ang)/360*PI;
        end_coor[15]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[16]=-round(rcoor*sin(alfcoor))+lng;
        end_coor[17]=-100;
        break;

      case 3:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;

        xcoor=wdt+end_coor[0];
        ycoor=lng+end_coor[1];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor+float(ang)/360*PI;
        end_coor[0]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[1]=round(rcoor*sin(alfcoor))-lng;
        end_coor[2]=-100;

        xcoor=wdt+end_coor[3];
        ycoor=lng+end_coor[4];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor+float(ang)/360*PI;
        end_coor[3]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[4]=round(rcoor*sin(alfcoor))-lng;
        end_coor[5]=-70;

        xcoor=wdt+end_coor[6];
        ycoor=end_coor[7];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor-float(ang)/360*PI;
        end_coor[6]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[7]=round(rcoor*sin(alfcoor));
        end_coor[8]=-70;

        xcoor=wdt+end_coor[9];
        ycoor=end_coor[10];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor-float(ang)/360*PI;
        end_coor[9]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[10]=round(rcoor*sin(alfcoor));
        end_coor[11]=-100;
 
        xcoor=wdt+end_coor[12];
        ycoor=-lng+end_coor[13];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor-float(ang)/360*PI;
        end_coor[12]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[13]=-round(rcoor*sin(alfcoor))+lng;
        end_coor[14]=-100;

        xcoor=wdt+end_coor[15];
        ycoor=-lng+end_coor[16];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor-float(ang)/360*PI;
        end_coor[15]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[16]=-round(rcoor*sin(alfcoor))+lng;
        end_coor[17]=-70;
        break;

      case 4:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;

        xcoor=wdt+end_coor[0];
        ycoor=lng+end_coor[1];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor+float(ang)/360*PI;
        end_coor[0]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[1]=round(rcoor*sin(alfcoor))-lng;
        end_coor[2]=-100;

        xcoor=wdt+end_coor[3];
        ycoor=lng+end_coor[4];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor+float(ang)/360*PI;
        end_coor[3]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[4]=round(rcoor*sin(alfcoor))-lng;
        end_coor[5]=-100;

        xcoor=wdt+end_coor[6];
        ycoor=end_coor[7];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor-float(ang)/360*PI;
        end_coor[6]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[7]=round(rcoor*sin(alfcoor));
        end_coor[8]=-100;

        xcoor=wdt+end_coor[9];
        ycoor=end_coor[10];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor-float(ang)/360*PI;
        end_coor[9]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[10]=round(rcoor*sin(alfcoor));
        end_coor[11]=-100;
 
        xcoor=wdt+end_coor[12];
        ycoor=-lng+end_coor[13];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor-float(ang)/360*PI;
        end_coor[12]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[13]=-round(rcoor*sin(alfcoor))+lng;
        end_coor[14]=-100;

        xcoor=wdt+end_coor[15];
        ycoor=-lng+end_coor[16];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor-float(ang)/360*PI;
        end_coor[15]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[16]=-round(rcoor*sin(alfcoor))+lng;
        end_coor[17]=-100;
        break;

      case 5:
        for(i=0; i<18; i++)
          end_coor[i]=Cdec[i].val;

        xcoor=wdt+end_coor[0];
        ycoor=lng+end_coor[1];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor-float(ang)/360*PI;
        end_coor[0]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[1]=round(rcoor*sin(alfcoor))-lng;
        end_coor[2]=-70;

        xcoor=wdt+end_coor[3];
        ycoor=lng+end_coor[4];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor-float(ang)/360*PI;
        end_coor[3]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[4]=round(rcoor*sin(alfcoor))-lng;
        end_coor[5]=-100;

        xcoor=wdt+end_coor[6];
        ycoor=end_coor[7];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor-float(ang)/360*PI;
        end_coor[6]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[7]=round(rcoor*sin(alfcoor));
        end_coor[8]=-100;

        xcoor=wdt+end_coor[9];
        ycoor=end_coor[10];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor-float(ang)/360*PI;
        end_coor[9]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[10]=round(rcoor*sin(alfcoor));
        end_coor[11]=-70;
 
        xcoor=wdt+end_coor[12];
        ycoor=-lng+end_coor[13];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor+float(ang)/360*PI;
        end_coor[12]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[13]=-round(rcoor*sin(alfcoor))+lng;
        end_coor[14]=-70;

        xcoor=wdt+end_coor[15];
        ycoor=-lng+end_coor[16];
        rcoor=sqrt(xcoor*xcoor+ycoor*ycoor);
        alfcoor=acos(float(xcoor)/rcoor);
        alfcoor=alfcoor+float(ang)/360*PI;
        end_coor[15]=round(rcoor*cos(alfcoor))-wdt;
        end_coor[16]=-round(rcoor*sin(alfcoor))+lng;
        end_coor[17]=-100;
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
