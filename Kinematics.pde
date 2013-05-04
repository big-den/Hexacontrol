class Kinematics // Кинематические преобразования
{
  int[] ang=new int[3];
  int[] dec=new int[3];
  int l1=32, l2=12, l3=7, l4=60, l5=105;
  
  Kinematics(int a, int b, int g)
  {
    ang[0]=a;
    ang[1]=b;
    ang[2]=g;
    this.FK();
  }
  
  void FK()
  {
    float alfa, betha, gamma;
    float DH, HF, BH, HBI, YBH;
    alfa=float(ang[0])/360*PI*2;
    betha=float(ang[1])/360*PI*2;
    gamma=float(ang[2])/360*PI*2;
    DH=l4*sin(betha)+l5*sin(gamma-betha);
    HF=l4*cos(betha)-l5*cos(gamma-betha);
    BH=sqrt(sq(l2+DH)+sq(l3));
    HBI=asin(l3/BH);
    YBH=alfa-HBI;
    dec[0]=round(BH*sin(YBH));
    dec[1]=round(BH*cos(YBH));
    dec[2]=round(HF-l1);
  }
  
  void IK()
  {
    float BH, BI, YBH, HBI, YBI, DH, IK, CK, CJK, JCK, KCI, JCI, ZCJ;
    BH=sqrt(sq(dec[0])+sq(dec[1]));
    BI=sqrt(sq(BH)-sq(l3));
    YBH=(dec[1]>0)?asin(dec[0]/BH):PI-asin(dec[0]/BH);
    HBI=asin(l3/BH);
    YBI=YBH+HBI;
    DH=BI-l2;
    IK=dec[2]+l1;
    CK=sqrt(sq(DH)+sq(IK));
    CJK=acos((sq(l4)+sq(l5)-sq(CK))/ (2*l4*l5));
    JCK=acos((sq(l4)+sq(CK)-sq(l5))/ (2*l4*CK));
    KCI=asin(IK/CK);
    JCI=JCK+KCI;
    ZCJ=PI/2-JCI;
    ang[0]=round(YBI/ (PI*2)*360);
    ang[1]=round(ZCJ/ (PI*2)*360);
    ang[2]=round(CJK/ (PI*2)*360);
  }
}

