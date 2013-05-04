int corr[]={11,13,3,9,8,-4,-5,8,-4,9,1,7,-3,4,-1,5,-6,-6};

void Comm(int i)
{
  int snd;
  snd=Cang[i].val+corr[i];
  snd=(snd<1)?1:snd;
  snd=(snd>179)?179:snd;

  snd=(i==3||i==4||i==5||i==9||i==10||i==11||i==12||i==15||i==16||i==17)?180-snd:snd;

  if(enable_comm)
  {
    myPort.write(byte(241));
    myPort.write(byte(i));
    myPort.write(byte(243));
    myPort.write(byte(snd));
  }
}
