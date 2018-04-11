void JikanWari() {
  if (month_or_day == "時間割") {
    if (mouseX >= 78 && mouseX <= 183) {
      if (mouseY >= 193 && mouseY <= 233) {
        niti_color = 255;
      } else {
        niti_color = 0;
      }
    } else {
      niti_color = 0;
    }

    if (mouseX >= 78 && mouseX <= 183) {
      if (mouseY >= 153 && mouseY <= 193) {
        tuki_color = 255;
      } else {
        tuki_color = 0;
      }
    } else {
      tuki_color = 0;
    }
    //カレンダーの横線
    for (int i = 0; i<5; i++) {
      stroke(0);
      line(70, 200+(85*i), width-35, 200+(85*i));
      line(70, 625, width-35, 625);
    }
    //カレンダーの縦線
    for (int i = 0; i<5; i++) {
      stroke(0);
      line(70+(75*i), 200, 70+(75*i), 625);
      line(445, 200, 445, 625);
    }
    String week_day[] = {"月", "火", "水", "木", "金"};
    String jikanwari[] = {"１限", "２限", "３限", "４限", "５限"};
    String Mon[] = {"線形数学","数学演習","空きコマ","空きコマ","空きコマ"};
    String TUE[] = {"解析学I","機器概論","コミュ英","空きコマ","空きコマ"};
    String WED[] = {"リテラシ","空きコマ","空きコマ","空きコマ","空きコマ"};
    String THU[] = {"コミュ英","余暇健康","物理入門","空きコマ","空きコマ"};
    String FRI[] = {"情報表現","情報表現","情報表現","空きコマ","人体生理"};
    for (int i = 0; i<5; i++) {
      stroke(0);
      fill(255);
      rect(70+(75*i), 170, 75, 30);
      rect(30, 200+(85*i), 40, 85);
      fill(0);
      text(week_day[i], 98+(75*i), 193);
      text(jikanwari[i], 40, 217+(85*i), 25, 100);
    }
      for (int i=0; i<5; i++) {
          textSize(19);
          text(Mon[i], 70+(75*0), 250+(85*i));
          text(TUE[i], 70+(75*1), 250+(85*i));
          text(WED[i], 70+(75*2), 250+(85*i));
          text(THU[i], 70+(75*3), 250+(85*i));
          text(FRI[i], 70+(75*4), 250+(85*i));
        }
        
      }
    }