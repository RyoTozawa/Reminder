void boolean_mouse() {
  if (mouse) {
    if (!(month_or_day=="時間割")) {
      fill(255, 255, 224);
      rect(38, 153, 105, 120);
    }
    if (month_or_day=="時間割") {
      fill(255, 255, 224);
      rect(78, 153, 105, 120);
    }

    if (month_or_day == "時間割") {
      fill(245, 216, 0);
      text("時間割なう", 80, 251);
    } else {
      fill(jikan_color, 0, 0);
      text("時間割", 40, 251);
    }

    if (month_or_day == "月") {
      fill(245, 216, 0);
      text("月で表示中", 40, 185);
    } else if (month_or_day == "日") {
      fill(tuki_color, 0, 0);
      text("月"+"("+month()+"日"+")", 40, 185);
    } else if (month_or_day == "時間割") {
      fill(tuki_color, 0, 0);
      text("月"+"("+month()+"月"+")", 80, 185);
    }

    if (month_or_day=="日") {
      fill(229, 69, 0);
      text("日で表示中", 40, 218);
    } else if (month_or_day=="月") {
      fill(niti_color, 0, 0);
      text("日"+"("+day()+"日"+")", 40, 218);
    } else if (month_or_day=="時間割") {
      fill(niti_color, 0, 0);
      text("日"+"("+day()+"日"+")", 80, 218);
    }
  }
}