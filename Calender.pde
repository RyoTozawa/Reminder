boolean mouse = false;
boolean check_mouse = false;
final int daysOfMonth[]={31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};//閏年でなければ、これが月の日数
int r_lwhite = 245;//左ボタン配色
int g_lwhite = 255;//左ボタン配色
int b_lwhite = 250;//左ボタン配色
int r_rwhite = 245;//右ボタン配色
int g_rwhite = 255;//右ボタン配色
int b_rwhite = 250;//右ボタン配色
int r_return = 245;//戻るボタンの配色
int g_return = 255;//戻るボタンの配色
int b_return = 250;//戻るボタンの配色
int co_year = year();//年をカウント
int co_month = month();//月をカウント
int co_day = day();//日にちをカウント
int check_year = year();//co_year初期化用変数
int check_month = month();//co_month初期化用変数
int check_day = day();//co_day初期化用変数
int count_click = 0;
int rect_color = 0;
int jikan_color = 0;//時間のテキストの色
int tuki_color = 0;//月のテキストの色
int niti_color = 0;//日のテキストの色
//カレンダーを表示するための処理
String month_or_day = "日";

void set_Calender() {
  String week[] = {"日", "月", "火", "水", "木", "金", "土"};
  //UI用変数
  int tri_center_x = 37;
  int tri_center_y = 157;
  int tri_left_x = tri_center_x - 6;
  int tri_left_y = 150;
  int tri_right_x = tri_center_x + 6;
  int tri_right_y = 150;

  //UI描画用処理
  stroke(23, 255, 233);
  line(0, 130, width, 130);
  textSize(20);
  fill(0);
  if (!(month_or_day=="時間割")) {
    text(month_or_day, 8, 160);
    fill(255);
    triangle(tri_center_x, tri_center_y, tri_left_x, tri_left_y, tri_right_x, tri_right_y);
  } else {
    text(month_or_day, 8, 160);
    fill(255);
    triangle(tri_center_x+40, tri_center_y, tri_left_x+40, tri_left_y, tri_right_x+40, tri_right_y);
  }
  //参照したいものが月か日かでUIを変えるための条件分岐
  //月で予定をみたい時
  if (month_or_day == "月") {
    //エラーをはかないための年・月切り替え用条件分岐
    if (co_month == 0) {
      co_month = 12;
      co_year -= 1;
    }
    if (co_month == 13) {
      co_month = 1;
      co_year += 1;
    }
    show_month(co_year, co_month, co_day);
    textSize(30);
    fill(0);
    text(co_month+"月"+"("+co_year+"年"+")", (width/2)-70, 160);
    //右の方の矢印
    stroke(23, 255, 233);
    fill(r_lwhite, g_lwhite, b_lwhite);
    rect(400, 147, 22, 20);
    fill(r_rwhite, g_rwhite, b_rwhite);
    rect(422, 147, 22, 20);
    line(422, 147, 422, 167);
    fill(r_return, g_return, b_return);
    rect(450, 147, 22, 20);
    stroke(0);
    line(406, 157, 416, 150);
    line(406, 157, 416, 164);
    line(438, 157, 428, 150);
    line(438, 157, 428, 164);
    textSize(20);
    fill(0);
    text("戻", 451, 165);

    for (int i=0; i<week.length; i++) {
      if (i==0) {
        fill(255, 0, 0);
      } else {
        fill(0);
      }
      text(week[i], 53+(59*i), 192);
    }

    //マウスをクリックをユーザーに促すためのUIの処理
    if (mouseX >= 400 && mouseX<= 422) {
      if (mouseY >= 147 && mouseY <= 167) {
        r_lwhite = 200;
        g_lwhite = 200;
        b_lwhite = 200;
      } else {
        r_lwhite = 245;
        g_lwhite = 255;
        b_lwhite = 250;
      }
    } else {
      r_lwhite = 245;
      g_lwhite = 255;
      b_lwhite = 250;
    }
    //
    if (mouseX >= 422 && mouseX<= 444) {
      if (mouseY >= 147 && mouseY <= 167) {
        r_rwhite = 200;
        g_rwhite = 200;
        b_rwhite = 200;
      } else {
        r_rwhite = 245;
        g_rwhite = 255;
        b_rwhite = 250;
      }
    } else {
      r_rwhite = 245;
      g_rwhite = 255;
      b_rwhite = 250;
    }

    if (mouseX >= 450 && mouseX <= 472) {
      if (mouseY >= 147 && mouseY<=167) {
        r_return = 200;
        g_return = 200;
        b_return = 200;
      } else {
        r_return = 245;
        g_return = 255;
        b_return = 250;
      }
    } else {
      r_return = 245;
      g_return = 255;
      b_return = 250;
    }
  }




  JikanWari();
  Tuki();
  Niti();
  textSize(20);
  boolean_mouse();
}

//クリック時の動作
void mousePressed() {

  if (mouse == false) {
    if (!(month_or_day=="時間割")) {
      if (mouseX >= 8 && mouseX <= 43) {
        if (mouseY >= 150 && mouseY <= 157) {
          mouse = true;
        }
      }
    }
  } else {
    mouse = false;
  }


  if (month_or_day=="時間割") {
    if (mouseX >= 8 && mouseX <= 90) {
      if (mouseY >= 150 && mouseY <= 157) {
        mouse = true;
      }
    }
  }



  if (month_or_day == "日") {
    if (mouseX >= 38 && mouseX <= 143) {
      if (mouseY >= 153 && mouseY <= 193) {
        month_or_day = "月";
        mouse = false;
      }
    }
  }


  if (month_or_day == "時間割") {
    if (mouseX >= 78 && mouseX <= 183) {
      if (mouseY >= 153 && mouseY <= 193) {
        month_or_day = "月";
        mouse = false;
      }
    }
  }
  
  if (month_or_day == "月") {
    if (mouseX >= 78 && mouseX <= 143) {
      if (mouseY >= 193 && mouseY <= 233) {
        month_or_day="日";
        mouse = false;
      }
    }
  }


  if (month_or_day == "時間割") {
    if (mouseX >= 78 && mouseX <= 143) {
      if (mouseY >= 193 && mouseY <= 233) {
        month_or_day="日";
        mouse = false;
      }
    }
  }

  if (!(month_or_day == "時間割")) {
    if (mouseX >= 38 && mouseX <= 143) {
      if (mouseY >= 211 && mouseY <= 251) {
        month_or_day = "時間割";
        mouse = false;
      }
    }
  }

  if (mouseX >= 400 && mouseX<= 422) {
    if (mouseY >= 147 && mouseY <= 167) {
      co_month -= 1;
    }
  }

  if (mouseX >= 422 && mouseX <= 444) {
    if (mouseY >= 147 && mouseY <= 167) {
      co_month += 1;
    }
  }

  if (mouseX >= 450 && mouseX <= 472) {
    if (mouseY >= 147 && mouseY<=167) {
      co_year = check_year;
      co_month = check_month;
      co_day = check_day;
    }
  }
}