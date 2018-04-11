void Niti() {
  if (month_or_day == "日") {
    textSize(30);
    fill(0);
    text("本日の予定", 175, 165);
    text("(￣Д￣)ﾉ", 35, 190);
    for (int j = 0; j<event.length; j++) {
      if (day()==s_day[j]&&month()==s_month[j]&&year()==s_year[j]) {
        fill(0);
        textSize(15);
        if (s_minute[j]==0) {
          text("From"+s_hour[j]+":"+"00", 200, 90+(60*j));
        } else if (s_minute[j]==1) {
          text("From"+s_hour[j]+":"+"01", 200, 90+(60*j));
        } else if (s_minute[j]==2) {
          text("From"+s_hour[j]+":"+"02", 200, 90+(60*j));
        } else if (s_minute[j]==3) {
          text("From"+s_hour[j]+":"+"03", 200, 90+(60*j));
        } else if (s_minute[j]==4) {
          text("From"+s_hour[j]+":"+"04", 200, 90+(60*j));
        } else if (s_minute[j]==5) {
          text("From"+s_hour[j]+":"+"05", 200, 90+(60*j));
        } else if (s_minute[j]==6) {
          text("From"+s_hour[j]+":"+"06", 200, 90+(60*j));
        } else if (s_minute[j]==7) {
          text("From"+s_hour[j]+":"+"07", 200, 90+(60*j));
        } else if (s_minute[j]==8) {
          text("From"+s_hour[j]+":"+"08", 200, 90+(60*j));
        } else if (s_minute[j]==9) {
          text("From"+s_hour[j]+":"+"09", 200, 90+(60*j));
        } else {
          text("From"+s_hour[j]+":"+s_minute[j], 200, 90+(60*j));
        }
        int difference_h = s_hour[j]-hour();
        int difference_m = 59-s_minute[j]-minute();
        int difference_s = 59-second();

        if (difference_h==0) {
          text(difference_h+"時間"+(s_minute[j]-minute()-1)+"分"+(59-second())+"秒", 300, 90+(60*j));
        }

        if (difference_h>1) {
          text(difference_h+"時間"+(s_minute[j]-minute()-1)+"分"+(difference_s)+"秒", 300, 90+(60*j));
        }
        
        if((difference_h==0&&difference_m==0)) {
          text((59-second())+"秒", 300, 90+(60*j));
        }
      
        
        if(hour() == s_hour[j]&&minute()==s_minute[j]&&second()==0){
          notify.play();
          //notify.rewind();
        }
        
        if ((hour() >= s_hour[j]&&minute()>=s_minute[j])||hour() > s_hour[j]&&minute()<=s_minute[j]) {
          noStroke();
          fill(245, 255, 250);
          rect(300, 77+(60*j), 150, 15);
          fill(0);
          text("イベント終了お疲れ様です", 290, 90+(60*j));
          }
        textSize(30);
        fill(0);
        text(event[j], 25, 90+(60*j));
        stroke(0);
        //イベント発生前は緑、発生後は赤

        if ((hour() >= s_hour[j]&&minute()>=s_minute[j])||hour() > s_hour[j]&&minute()<=s_minute[j]) {
          fill(255, 0, 0);
        } else if (hour() <= s_hour[j]&&minute()<s_minute[j]) {
          fill(0, 255, 0);
        }
        rect(10, 74+(60*j), 10, 10);//x軸差が15,y軸差が16
      }
    }
  }

  if (month_or_day == "日") {
    if (mouseX >= 38 && mouseX <= 143) {
      if (mouseY >= 153 && mouseY <= 193) {
        tuki_color = 255;
      } else {
        tuki_color = 0;
      }
    } else {
      tuki_color = 0;
    }

    if (mouseX >= 38 && mouseX <= 143) {
      if (mouseY >= 233 && mouseY <= 273) {
        jikan_color = 255;
      } else {
        jikan_color = 0;
      }
    } else {
      jikan_color = 0;
    }
  }
}