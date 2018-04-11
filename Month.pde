void show_month(int a, int b, int c) {

  int first_day = calculate_day(a, b, 0);
  int total_days=getDaysOfMonth(co_year, co_month); 
  //カレンダー上部の月を表示

  textSize(20);
  //日にちを表示
  for (int i=1; i<=total_days; i++) {
    for (int j = 0; j<s_day.length; j++) {
      if (i == s_day[j] && co_month == s_month[j] && co_year  == s_year[j]) {
        fill(100, 255, 250);
        //rect((i+first_day)%7*((width-10)/8.0)+34.3,(((i+first_day)/7+2)*((height-5)/9))+60,59,70);
      } else {
        fill(245, 255, 250);
        //rect((i+first_day)%7*((width-10)/8.0)+34.3,(((i+first_day)/7+2)*((height-5)/9))+60,59,70);
      }
    }
    stroke(255);
    rect((i+first_day)%7*((width-10)/8.0)+34.3, (((i+first_day)/7+2)*((height-5)/9))+60, 59, 70);

    if (a==year()&&b==month()&&i==c) {
      fill(0, 0, 255);//「今日」→ 青字
    } else {
      fill(0, 0, 0);//それ以外
    }

    String dd=(" "+i);
    dd=dd.substring(dd.length()-2);//文字列を右寄せっぽくする。substringは部分的に抜き出す。
    textSize(20);
    text(dd, (i+first_day)%7*((width-10)/8)+70, (((i+first_day)/7+2)*((height-5)/9))+80);

    for (int j = 0; j<s_day.length; j++) {
      if (day() < s_day[j] && co_month == s_month[j] && co_year  == s_year[j]) {
        if (i == s_day[j] && co_month == s_month[j] && co_year  == s_year[j]) {
          stroke(0);
          fill(0);
          textSize(15);
          text("予定あり", ((i+first_day)%7*((width-10)/8.0)+34.3), (((i+first_day)/7+2)*((height-5)/9))+100);
        }
      } else if (day() > s_day[j] && co_month == s_month[j] && co_year  == s_year[j]) {
        if (i == s_day[j] && co_month == s_month[j] && co_year  == s_year[j]) {
          text("終了!!", ((i+first_day)%7*((width-10)/8.0)+34.3), (((i+first_day)/7+2)*((height-5)/9))+105);
        }
      } else if (day() == s_day[j] && co_month == s_month[j] && co_year  == s_year[j]) {
        if (i == s_day[j] && co_month == s_month[j] && co_year  == s_year[j]) {
          text("当日!!", ((i+first_day)%7*((width-10)/8.0)+34.3), (((i+first_day)/7+2)*((height-5)/9))+105);
        }
      }
    }
  }
  //カレンダーの横線
  for (int i = 0; i<7; i++) {
    stroke(0);
    line(33, 200+(70*i), width-35, 200+(70*i));
  }
  //カレンダーの縦線
  for (int i = 0; i<7; i++) {
    stroke(0);
    line(33+(59*i), 200, 33+(59*i), 620);
    line(445, 200, 445, 620);
  }
}