//ステータスバーの設置
void set_Clock(float x, float y) {
  textSize(18);
  int s = second();
  int h = hour();
  int m = minute();
  float between_h = x-5;
  float between_m = x-25;
  int current = millis();
  fill(255);

  if (int(current/1000)%2==0) {
    text(":", width-(x-15), y);
  } else {
  }

  text(year()+"年", 10, y);
  text(month()+"月", 74, y);
  text(day()+"日", 113, y);

  //時間帯によりAM・PM切り替え
  if ((h >= 1) && (h <= 12)) {
    text("AM", width-(x+20), y);
  } else {
    text("PM", width-(x+20), y);
  }

  //hour表示  
  if (h==1) {
    text("1", width-(between_h), y);
  } else if (h==2) {
    text("2", width-(between_h), y);
  } else if (h==3) {
    text("3", width-(between_h), y);
  } else if (h==4) {
    text("4", width-(between_h), y);
  } else if (h==5) {
    text("5", width-(between_h), y);
  } else if (h==6) {
    text("6", width-(between_h), y);
  } else if (h==7) {
    text("7", width-(between_h), y);
  } else if (h==8) {
    text("8", width-(between_h), y);
  } else if (h==9) {
    text("9", width-(between_h), y);
  } else if (h==13) {
    text("1", width-(between_h), y);
  } else if (h==14) {
    text("2", width-(between_h), y);
  } else if (h==15) {
    text("2", width-(between_h), y);
  } else if (h==16) {
    text("4", width-(between_h), y);
  } else if (h==17) {
    text("5", width-(between_h), y);
  } else if (h==18) {
    text("6", width-(between_h), y);
  } else if (h==19) {
    text("7", width-(between_h), y);
  } else if (h==20) {
    text("8", width-(between_h), y);
  } else if (h==21) {
    text("9", width-(between_h), y);
  } else if (h==22) {
    text("10", width-(between_h), y);
  } else if (h==23) {
    text("11", width-(between_h), y);
  } else if (h==24) {
    text("12", width-(between_h), y);
  } else {
    text(h, width-x, y);
  }

  //minute表示 
  if (m==0) {
    text("00", width-between_m, y);
  } else if (m==1) {
    text("01", width-between_m, y);
  } else if (m==2) {
    text("02", width-between_m, y);
  } else if (m==3) {
    text("03", width-between_m, y);
  } else if (m==4) {
    text("04", width-between_m, y);
  } else if (m==5) {
    text("05", width-between_m, y);
  } else if (m==6) {
    text("06", width-between_m, y);
  } else if (m==7) {
    text("07", width-between_m, y);
  } else if (m==8) {
    text("08", width-between_m, y);
  } else if (m==9) {
    text("09", width-between_m, y);
  } else {
    text(m, width-between_m, y);
  }
  //３０分毎に時報
  if (h==0&&m==0) {
    am_0.play();
  } else if (h==0 && m==30) {
    am_0_30.play();
  } else if (h==1 && m==0) {
    am_1.play();
  } else if (h==1 && m==30) {
    am_1_30.play();
  } else if (h==2 && m==0) {
    am_2.play();
  } else if (h==2 && m==30) {
    am_2_30.play();
  } else if (h==3 && m==0) {
    am_3.play();
  } else if (h==3 && m==30) {
    am_3_30.play();
  } else if (h==4 && m==0) {
    am_4.play();
  } else if (h==4 && m==30) {
    am_4_30.play();
  } else if (h==5 && m==0) {
    am_5.play();
  } else if (h==5 && m==30) {
    am_5_30.play();
  } else if (h==6 && m==0) {
    am_6.play();
  } else if (h==6 && m==30) {
    am_6_30.play();
  } else if (h==7 && m==0) {
    am_7.play();
  } else if (h==7 && m==30) {
    am_7_30.play();
  } else if (h==8 && m==0) {
    am_8.play();
  } else if (h==8 && m==30) {
    am_8_30.play();
  } else if (h==9 && m==0) {
    am_9.play();
  } else if (h==9 && m==30) {
    am_9_30.play();
  } else if (h==10 && m==0) {
    am_10.play();
  } else if (h==10 && m==30) {
    am_10_30.play();
  } else if (h==11 && m==0) {
    am_11.play();
  } else if (h==11 && m==30) {
    am_11_30.play();
  } else if (h==12 && m==0) {
    pm_0.play();
  } else if (h==12 && m==30) {
    pm_0_30.play();
  } else if (h==13 && m==0) {
    pm_1.play();
  } else if (h==13 && m==30) {
    pm_1_30.play();
  } else if (h==14 && m==0) {
    pm_2.play();
  } else if (h==14 && m==30) {
    pm_2_30.play();
  } else if (h==15 && m==0) {
    pm_3.play();
  } else if (h==15 && m==30) {
    pm_3_30.play();
  } else if (h==16 && m==0) {
    pm_4.play();
  } else if (h==16 && m==30) {
    pm_4_30.play();
  } else if (h==16 && m==30) {
    pm_4_30.play();
  } else if (h==16 && m==30) {
    pm_4_30.play();
  } else if (h==17 && m==0) {
    pm_5.play();
  } else if (h==17 && m==30) {
    pm_5_30.play();
  } else if (h==18 && m==0) {
    pm_6.play();
  } else if (h==18 && m==30) {
    pm_6_30.play();
  } else if (h==19 && m==0) {
    pm_7.play();
  } else if (h==19 && m==30) {
    pm_7_30.play();
  } else if (h==20 && m==0) {
    pm_8.play();
  } else if (h==20 && m==30) {
    pm_8_30.play();
  } else if (h==21 && m==0) {
    pm_9.play();
  } else if (h==21 && m==30) {
    pm_9_30.play();
  } else if (h==22 && m==0) {
    pm_10.play();
  } else if (h==22 && m==30) {
    pm_10_30.play();
  } else if (h==23 && m==0) {
    pm_11.play();
  } else if (h==23 && m==30) {
    pm_11_30.play();
  }
}