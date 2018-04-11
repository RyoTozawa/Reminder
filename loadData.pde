int s_year[];//s==stock
int s_month[];
int s_day[];
int s_hour[];
int s_minute[];
String event[];
String Jikanwari_pop[];
Minim minim;
AudioPlayer am_0;
AudioPlayer am_0_30;
AudioPlayer am_1;
AudioPlayer am_1_30;
AudioPlayer am_2;
AudioPlayer am_2_30;
AudioPlayer am_3;
AudioPlayer am_3_30;
AudioPlayer am_4;
AudioPlayer am_4_30;
AudioPlayer am_5;
AudioPlayer am_5_30;
AudioPlayer am_6;
AudioPlayer am_6_30;
AudioPlayer am_7;
AudioPlayer am_7_30;
AudioPlayer am_8;
AudioPlayer am_8_30;
AudioPlayer am_9;
AudioPlayer am_9_30;
AudioPlayer am_10;
AudioPlayer am_10_30;
AudioPlayer am_11;
AudioPlayer am_11_30;

AudioPlayer pm_0;
AudioPlayer pm_0_30;
AudioPlayer pm_1;
AudioPlayer pm_1_30;
AudioPlayer pm_2;
AudioPlayer pm_2_30;
AudioPlayer pm_3;
AudioPlayer pm_3_30;
AudioPlayer pm_4;
AudioPlayer pm_4_30;
AudioPlayer pm_5;
AudioPlayer pm_5_30;
AudioPlayer pm_6;
AudioPlayer pm_6_30;
AudioPlayer pm_7;
AudioPlayer pm_7_30;
AudioPlayer pm_8;
AudioPlayer pm_8_30;
AudioPlayer pm_9;
AudioPlayer pm_9_30;
AudioPlayer pm_10;
AudioPlayer pm_10_30;
AudioPlayer pm_11;
AudioPlayer pm_11_30;

AudioPlayer notify;


//色々なデータを読み込み
void loadData() {
  String remind[] = loadStrings("reminder.txt");
  String Jikanwari_stack[] = loadStrings("時間割.txt");
  s_year = new int[(remind.length-1)/6];
  s_month = new int[(remind.length-1)/6];
  s_day = new int[(remind.length-1)/6];
  s_hour = new int[(remind.length-1)/6];
  s_minute = new int[(remind.length-1)/6];
  event = new String[(remind.length-1)/6];
  Jikanwari_pop = new String[Jikanwari_stack.length];
  
  for(int i=0;i<Jikanwari_stack.length;i++){
    Jikanwari_pop[i]=Jikanwari_stack[i];
  }
  
  for (int i = 0; i<(remind.length-1)/6; i++) {
    s_year[i] = int(remind[(6*i)+1]);
    s_month[i] = int(remind[(6*i)+2]);
    s_day[i] = int(remind[(6*i)+3]);
    s_hour[i] = int(remind[(6*i)+4]);
    s_minute[i] = int(remind[(6*i)+5]);
    event[i] = remind[(6*i)+6];
  }


  //音声ファイル
  am_0 = minim.loadFile("am_0.wav");
  am_0_30 = minim.loadFile("am_0_30.wav");
  am_1 = minim.loadFile("am_1.wav");
  am_1_30 = minim.loadFile("am_1_30.wav");
  am_2 = minim.loadFile("am_2.wav");
  am_2_30 = minim.loadFile("am_2_30.wav");
  am_3 = minim.loadFile("am_3.wav");
  am_3_30 = minim.loadFile("am_3_30.wav");
  am_4 = minim.loadFile("am_4.wav");
  am_4_30 = minim.loadFile("am_4_30.wav");
  am_5 = minim.loadFile("am_5.wav");
  am_5_30 = minim.loadFile("am_5_30.wav");
  am_6 = minim.loadFile("am_6.wav");
  am_6_30 = minim.loadFile("am_6_30.wav");
  am_7 = minim.loadFile("am_7.wav");
  am_7_30 = minim.loadFile("am_7_30.wav");
  am_8 = minim.loadFile("am_8.wav");
  am_8_30 = minim.loadFile("am_8_30.wav");
  am_9 = minim.loadFile("am_9.wav");
  am_9_30 = minim.loadFile("am_9_30.wav");
  am_10 = minim.loadFile("am_10.wav");
  am_10_30 = minim.loadFile("am_10_30.wav");
  am_11 = minim.loadFile("am_11.wav");
  am_11_30 = minim.loadFile("am_11_30.wav");

  pm_0 = minim.loadFile("pm_0.wav");
  pm_0_30 = minim.loadFile("pm_0_30.wav");
  pm_1 = minim.loadFile("pm_1.wav");
  pm_1_30 = minim.loadFile("pm_1_30.wav");
  pm_2 = minim.loadFile("pm_2.wav");
  pm_2_30 = minim.loadFile("pm_2_30.wav");
  pm_3 = minim.loadFile("pm_3.wav");
  pm_3_30 = minim.loadFile("pm_3_30.wav");
  pm_4 = minim.loadFile("pm_4.wav");
  pm_4_30 = minim.loadFile("pm_4_30.wav");
  pm_5 = minim.loadFile("pm_5.wav");
  pm_5_30 = minim.loadFile("pm_5_30.wav");
  pm_6 = minim.loadFile("pm_6.wav");
  pm_6_30 = minim.loadFile("pm_6_30.wav");
  pm_7 = minim.loadFile("pm_7.wav");
  pm_7_30 = minim.loadFile("pm_7_30.wav");
  pm_8 = minim.loadFile("pm_8.wav");
  pm_8_30 = minim.loadFile("pm_8_30.wav");
  pm_9 = minim.loadFile("pm_9.wav");
  pm_9_30 = minim.loadFile("pm_9_30.wav");
  pm_10 = minim.loadFile("pm_10.wav");
  pm_10_30 = minim.loadFile("pm_10_30.wav");
  pm_11 = minim.loadFile("pm_11.wav");
  pm_11_30 = minim.loadFile("pm_11_30.wav");
  
  notify = minim.loadFile("notification.mp3");
}