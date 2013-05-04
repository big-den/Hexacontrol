void keyPressed()
{
 switch(key)
 {
   case '1':
     gait=3; 
     start_scen=1; 
     scen=1;
     break; 
   case '2':
     gait=5; 
     start_scen=1; 
     scen=1;
     break; 
   case '3':
     gait=7; 
     start_scen=1; 
     scen=1;
     break; 
   case '4':
     gait=9; 
     start_scen=1; 
     scen=1;
     break; 
   case '5':
     gait=2; 
     start_scen=1; 
     scen=1;
     break; 
   case '6':
     gait=4; 
     start_scen=1; 
     scen=1;
     break; 
   case '7':
     gait=6; 
     start_scen=1; 
     scen=1;
     break; 
   case '8':
     gait=8; 
     start_scen=1; 
     scen=1;
     break; 
   case '9':
     gait=10; 
     start_scen=1; 
     scen=1;
     break; 
   case '0':
     gait=1; 
     start_scen=1; 
     scen=1;
     break; 
   case '=':
     gait=11; 
     start_scen=1; 
     scen=1;
     break; 
   case 'q':
     FP[0].val-=10;
     break;  
   case 'w':
     FP[0].val+=10;
     break;  
   case 'a':
     FP[1].val-=10;
     break;  
   case 's':
     FP[1].val+=10;
     break;  
   case 'z':
     FP[2].val-=10;
     break;  
   case 'x':
     FP[2].val+=10;
     break;  
   case 'e':
     FP[3].val-=10;
     break;  
   case 'r':
     FP[3].val+=10;
     break;  
   case 'd':
     FP[4].val-=10;
     break;  
   case 'f':
     FP[4].val+=10;
     break;  
   case 'c':
     FP[5].val-=10;
     break;  
   case 'v':
     FP[5].val+=10;
     break;  
   case 't':
     FP[6].val-=10;
     break;  
   case 'y':
     FP[6].val+=10;
     break;  
   case 'g':
     FP[7].val-=10;
     break;  
   case 'h':
     FP[7].val+=10;
     break;  
   case 'b':
     FP[8].val-=10;
     break;  
   case 'n':
     FP[8].val+=10;
     break;  
 } 
}
