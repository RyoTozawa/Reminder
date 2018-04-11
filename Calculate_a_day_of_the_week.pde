//ツェラーの公式より年月日より曜日を求める（引用）
void set_day(int a, int b, int c) {
  String days[] = {"日", "月", "火", "水", "木", "金", "土", };
  int year = a;
  int month = b;
  int day = c;

  if (month == 1 || month == 2) {
    year--;
    month += 12;
  }
  int day_of_the_week = (year+(year/4)-(year/100)+(year/400)+(13*month+8)/5+day)%7;
  fill(255);
  textSize(18);
  text(" ("+days[day_of_the_week]+")", 145, 22);
}

//ツェラーの公式より年月日より曜日を求める（引用）
int calculate_day(int a, int b, int c) {
  String days[] = {"日", "月", "火", "水", "木", "金", "土", };
  int year = a;
  int month = b;
  int day = c;

  if (month == 1 || month == 2) {
    year--;
    month += 12;
  }
  int day_of_the_week = (year+(year/4)-(year/100)+(year/400)+(13*month+8)/5+day)%7;
  return day_of_the_week;
}

// うるう年の判別（引用）
boolean isLeapYear(int y) {
  if (y % 400==0) {
    return true;
  } else if (y%100==0) {
    return false;
  } else if (y%4==0) {
    return true;
  }
  return false;
}  

// うるう年を考慮して「今月」の日数を求める（引用）
int getDaysOfMonth( int y, int m) {
  int days=daysOfMonth[m-1];
  if (m==2 && isLeapYear(y)) {
    days++;
  }
  return days;
}