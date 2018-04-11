import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int bottom_Bar_height = 30;
PFont myFont;//使いたいフォントを入れる用の変数

void setup() {
  size(480, 640);
  minim = new Minim(this);
  background(255);
  myFont = createFont("azuki_font", 32);//azuki_fontを利用
  textFont(myFont);
  JSONObject w = loadJSONObject(baseURL + city);
  title = w.getString("title");
  forecasts = w.getJSONArray("forecasts");
  loadData();
}

//7fffd4
void draw() {
  background(255);
  noStroke();
  fill(175, 238, 238);
  rect(0, 0, width, bottom_Bar_height);
  fill(245, 255, 250);
  rect(0, bottom_Bar_height, width, height-bottom_Bar_height);
  set_Clock(50, 22);
  get_Forecast();
  set_day(year(), month(), day());
  set_Calender();
}